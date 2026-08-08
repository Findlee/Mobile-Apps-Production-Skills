# Current primary sources for web API testing

These are living sources. Browse the relevant primary source when a recommendation depends on a current specification, version, or security category. Record the version or access date in the output.

- Latest published OpenAPI Specification: https://spec.openapis.org/oas/latest.html
- HTTP Semantics, RFC 9110: https://www.rfc-editor.org/rfc/rfc9110
- OWASP API Security project and current Top 10: https://owasp.org/API-Security/
- Pact documentation on suitable uses and limits: https://docs.pact.io/getting_started/what_is_pact_good_for

## Currency and interpretation

- Use the versions declared by the system under test; the latest version is a reference, not an automatic project requirement.
- Prefer the normative specification for protocol semantics and official project documentation for tool behavior.
- Do not turn the OWASP Top 10 into proof of security or an exhaustive test suite; use it to prompt threat-informed investigation.
- Consumer contracts describe selected consumer-provider expectations. They do not replace provider behavior, integration, performance, security, or operational testing.
- If a book and a current specification differ on a versioned fact, keep the book's durable testing principle and follow the current primary specification.
