#!/usr/bin/env ruby

require "pathname"
require "yaml"

repo_root = Pathname.new(__dir__).join("../../..").cleanpath
errors = []

def frontmatter(path)
  text = path.read
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  raise "missing YAML frontmatter" unless match

  YAML.safe_load(match[1], permitted_classes: [], aliases: false) || {}
end

def list(value)
  case value
  when Array then value.map(&:to_s)
  when String then value.split(",").map(&:strip)
  else []
  end
end

skill_dir = repo_root.join("skills/clean-ai-code-artifacts")
skill_file = skill_dir.join("SKILL.md")
all_skill_files = repo_root.glob("skills/*/SKILL.md").sort
all_skill_names = []

all_skill_files.each do |path|
  begin
    metadata = frontmatter(path)
    skill_name = metadata["name"].to_s
    all_skill_names << skill_name
    errors << "#{path.relative_path_from(repo_root)}: name must match directory" unless skill_name == path.dirname.basename.to_s
    errors << "#{path.relative_path_from(repo_root)}: description is empty" if metadata["description"].to_s.strip.empty?

    agent_metadata = path.dirname.join("agents/openai.yaml")
    unless agent_metadata.file?
      errors << "#{path.dirname.relative_path_from(repo_root)}: missing agents/openai.yaml"
      next
    end
    YAML.safe_load(agent_metadata.read, permitted_classes: [], aliases: false)
  rescue StandardError => e
    errors << "#{path.relative_path_from(repo_root)}: #{e.message}"
  end
end

errors << "skill names are not unique" unless all_skill_names.uniq.length == all_skill_names.length

begin
  metadata = frontmatter(skill_file)
  allowed_keys = %w[name description]
  extra_keys = metadata.keys.map(&:to_s) - allowed_keys
  errors << "skill frontmatter has unsupported keys: #{extra_keys.join(', ')}" unless extra_keys.empty?
  errors << "skill name does not match its directory" unless metadata["name"] == skill_dir.basename.to_s
  errors << "skill name is invalid" unless metadata["name"].to_s.match?(/\A[a-z0-9]+(?:-[a-z0-9]+)*\z/)
  errors << "skill description is empty" if metadata["description"].to_s.strip.empty?
rescue StandardError => e
  errors << "#{skill_file.relative_path_from(repo_root)}: #{e.message}"
end

openai_file = skill_dir.join("agents/openai.yaml")
begin
  openai = YAML.safe_load(openai_file.read, permitted_classes: [], aliases: false) || {}
  interface = openai.fetch("interface")
  %w[display_name short_description default_prompt].each do |key|
    errors << "openai.yaml missing interface.#{key}" if interface[key].to_s.strip.empty?
  end
  unless interface["default_prompt"].to_s.include?("$clean-ai-code-artifacts")
    errors << "openai.yaml default_prompt must mention $clean-ai-code-artifacts"
  end
rescue StandardError => e
  errors << "#{openai_file.relative_path_from(repo_root)}: #{e.message}"
end

agent_files = repo_root.glob("integrations/claude/agents/*.md").sort
errors << "expected three Claude agent files, found #{agent_files.length}" unless agent_files.length == 3

names = []
agent_files.each do |path|
  begin
    metadata = frontmatter(path)
    name = metadata["name"].to_s
    names << name
    errors << "#{path.basename}: name must match filename" unless name == path.basename(".md").to_s
    errors << "#{path.basename}: description is empty" if metadata["description"].to_s.strip.empty?
    errors << "#{path.basename}: maxTurns must be a positive integer" unless metadata["maxTurns"].is_a?(Integer) && metadata["maxTurns"].positive?

    permission_modes = %w[default acceptEdits auto dontAsk bypassPermissions plan manual]
    unless permission_modes.include?(metadata["permissionMode"].to_s)
      errors << "#{path.basename}: unsupported permissionMode"
    end

    list(metadata["skills"]).each do |skill_name|
      unless repo_root.join("skills", skill_name, "SKILL.md").file?
        errors << "#{path.basename}: missing referenced skill #{skill_name}"
      end
    end

    if %w[e2e-test-runner feature-tester].include?(name)
      denied = list(metadata["disallowedTools"])
      %w[Write Edit Agent].each do |tool|
        errors << "#{path.basename}: read-only agent must deny #{tool}" unless denied.include?(tool)
      end
    end

    if name == "code-simplifier"
      tools = list(metadata["tools"])
      %w[Read Grep Glob Bash Edit Write Skill].each do |tool|
        errors << "#{path.basename}: missing required tool #{tool}" unless tools.include?(tool)
      end
      errors << "#{path.basename}: must not be able to delegate" if tools.include?("Agent")
    end
  rescue StandardError => e
    errors << "#{path.relative_path_from(repo_root)}: #{e.message}"
  end
end

errors << "Claude agent names are not unique" unless names.uniq.length == names.length

markdown_files = [repo_root.join("README.md")]
markdown_files.concat(repo_root.glob("integrations/claude/**/*.md"))
markdown_files.concat(repo_root.glob("skills/clean-ai-code-artifacts/**/*.md"))

markdown_files.uniq.each do |path|
  text = path.read
  if text.match?(/\[TODO|TODO:\s+(Complete|Replace|Add content|Choose|Describe)/i)
    errors << "#{path.relative_path_from(repo_root)} contains an unresolved template TODO"
  end

  text.scan(/\[[^\]]+\]\(([^)]+)\)/).flatten.each do |target|
    next if target.start_with?("http://", "https://", "#")

    clean_target = target.split("#", 2).first
    next if clean_target.empty?

    resolved = path.dirname.join(clean_target).cleanpath
    errors << "#{path.relative_path_from(repo_root)} has broken link #{target}" unless resolved.exist?
  end
end

if errors.empty?
  puts "Claude integration validation passed"
  puts "agents=#{agent_files.length}; skills=#{all_skill_files.length}; markdown=#{markdown_files.uniq.length}; links=ok; metadata=ok"
  exit 0
end

warn "Claude integration validation failed:"
errors.each { |error| warn "- #{error}" }
exit 1
