# Flutter Native Integration

Current sources:

- Platform channels and Pigeon: https://docs.flutter.dev/platform-integration/platform-channels
- Packages and plugins: https://docs.flutter.dev/packages-and-plugins/developing-packages

## Selection

- Use an existing maintained plugin when it fits.
- Keep app-specific host code in the app when reuse is unlikely.
- Create a plugin when the capability should be reusable, independently versioned, or separately tested.
- Use a federated plugin structure when platforms need independent implementations and ownership.

## Contract mechanisms

- Prefer Pigeon or another current typed generation path for nontrivial two-sided contracts.
- Use method-style calls for request/response operations.
- Use event streams for ongoing native events with explicit subscription lifetime.
- Use basic messages only when their semantics are intentionally message-oriented.

Keep channel names globally unique within the application. Version the semantic contract when queued work, external packages, or independently released native code can outlive one build.

## Lifecycle and threading

- Follow current engine and embedding lifecycle APIs; older book examples may target previous lifecycles.
- Invoke and handle platform APIs on their required threads, moving expensive work away from UI threads.
- Do not assume one plugin instance or one Flutter engine. Keep engine-specific state on the instance and release it on detach.
- Clean up activity, scene, stream, and permission listeners.
- Test background-isolate use only when the plugin and platform API support it.

## Testing

Test the Dart-facing contract with a fake or controlled handler, then test Android and iOS implementations in host-language or device tests. A widget test cannot prove a camera, map, notification, or permission dialog works on the platform.
