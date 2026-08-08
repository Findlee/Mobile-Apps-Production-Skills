# Flutter Performance Diagnosis

Use profile mode and Flutter DevTools. Current guides:

- https://docs.flutter.dev/perf/ui-performance
- https://docs.flutter.dev/perf/best-practices
- https://docs.flutter.dev/perf/metrics

## Pipeline clues

- High build duration points toward expensive Dart work, broad rebuilds, synchronous computation, or complex widget creation.
- High raster duration points toward paint, clipping, opacity, shadows, save layers, large images, or shader work.
- Repeated layout or intrinsic passes point toward layout strategy, especially in lists and grids.
- Main-isolate stalls with normal raster work point toward synchronous Dart computation or excessive allocation.
- Startup delay may come from synchronous initialization, dependency setup, plugin work, database opening, or loading too much before first useful UI.

## Evidence-driven candidates

- Narrow observation and rebuild scope when traces show unrelated subtrees rebuilding.
- Use lazy builders when total collection size drives initial or scroll cost.
- Remove unnecessary intrinsic sizing or repeated measurement from dense collections.
- Resize or decode images near display size and verify cache behavior.
- Move measured CPU-bound work to an isolate only when transfer and startup costs are repaid.
- Avoid blocking initialization before first useful content; stage nonessential work.
- Reduce expensive paint operations only when raster traces implicate them.

`const` widgets and smaller components can reduce work in specific structures, but neither is a universal remedy. Verify the resulting frame metrics.

## Validation

Check build and raster distributions, not only the visual impression on a fast development device. Include 60 Hz and higher-refresh implications when the target supports them, plus battery and thermal behavior for sustained animation or background work.
