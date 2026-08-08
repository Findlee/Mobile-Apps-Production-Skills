---
name: diagnose-mobile-performance
description: Diagnose and improve mobile application performance through reproducible user-visible symptoms, release or profile measurements, thread and pipeline classification, profiler evidence, controlled experiments, and before-after validation. Use for Flutter or React Native jank, slow startup, delayed input, expensive rebuilds or rerenders, scrolling and list problems, image cost, memory growth, excessive CPU, battery use, native-boundary overhead, or regressions. Do not use for speculative optimization without a symptom or baseline.
---

# Diagnose Mobile Performance

Measure the behavior users experience on representative hardware. Do not optimize from code appearance, development builds, or a single average.

## Define and reproduce the symptom

1. Describe the exact journey, input, dataset size, device class, OS, build mode, and network condition.
2. Choose a user-facing metric and a threshold: startup, response latency, frame time, dropped or slow frames, list blanking, memory, CPU, energy, or package size.
3. Reproduce consistently in profile or release mode on a representative low or middle target device.
4. Record a baseline distribution, including high percentiles or worst relevant samples.
5. Confirm the regression window when comparison builds exist.

Read [measurement-workflow.md](references/measurement-workflow.md) for experiment discipline and bottleneck classification.

## Locate the limiting pipeline

Classify evidence before editing:

- UI or main-thread work;
- Flutter build/layout/raster work;
- React Native JavaScript or native UI work;
- component rebuild or rerender fan-out;
- list virtualization or image decode;
- synchronous CPU, serialization, or native-boundary traffic;
- allocation, garbage collection, leak, or memory pressure;
- disk, database, network, startup initialization, or package loading;
- background work, battery, or thermal throttling.

Use platform and framework profilers to find a narrow hot path. Correlation in a timeline is evidence to investigate, not yet proof of causation.

## Form and test one hypothesis

1. State the suspected bottleneck and the evidence supporting it.
2. Make the smallest change or controlled experiment that could falsify it.
3. Hold device, build, data, and journey constant.
4. Repeat enough runs to distinguish improvement from noise.
5. Keep the change only if the target metric improves without unacceptable trade-offs.

Read [flutter-diagnosis.md](references/flutter-diagnosis.md) or [react-native-diagnosis.md](references/react-native-diagnosis.md) for stack-specific signals and candidate remedies.

## Validate and protect

1. Compare before and after distributions on the original device and at least one other representative target.
2. Check correctness, accessibility, memory, battery, and visual quality for regressions.
3. Verify cold and warm states separately when startup or caching matters.
4. Add a benchmark, performance integration test, trace assertion, budget, or release check when the regression is likely to recur.
5. Record the accepted result using [performance-investigation.md](assets/performance-investigation.md).

Coordinate with `implement-flutter-feature` or `implement-react-native-feature` for the implementation, `refactor-safely` for structural cleanup, and `design-valuable-tests` for lasting regression protection.

Do not recommend memoization, `const`, isolates, native rewrites, smaller widgets, virtualization settings, or image caching without connecting the change to measured evidence. Do not compare a debug build with a release build. Do not improve mean latency while ignoring severe tail behavior.
