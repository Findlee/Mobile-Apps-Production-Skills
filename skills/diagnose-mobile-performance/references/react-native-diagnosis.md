# React Native Performance Diagnosis

Measure a release build and use tools appropriate to the installed React Native generation. Current guide: https://reactnative.dev/docs/performance.

## Pipeline clues

- JavaScript-thread stalls cause delayed event processing, state updates, and JS-driven work.
- Native UI-thread stalls affect layout, drawing, gestures, and native animations.
- Large rerender fan-out can make JavaScript busy even when only a small area changes.
- List blanking or scroll delay can come from virtualization settings, expensive rows, unstable identity, images, or insufficient batching.
- Startup cost can come from bundle loading, eager modules, synchronous initialization, large dependency graphs, or work before first useful screen.
- Frequent or large native-boundary transfers can dominate even on modern architecture; measure call volume and payload size.

## Evidence-driven candidates

- Correct impure render or effect loops before adding memoization.
- Place state closer to consumers when a global update triggers unrelated trees.
- Add memoization only around measured expensive rerenders with stable semantics; account for comparison and memory cost.
- Use virtualized lists, stable keys, inexpensive row rendering, and image sizing based on profiler evidence.
- Move high-frequency visual work to mechanisms that run appropriately on the native UI side when the installed animation stack supports it.
- Defer nonurgent React updates with concurrent features only when urgent interaction remains responsive and behavior stays correct.
- Stage nonessential startup work and avoid production logging on hot paths.

React Compiler or automatic batching does not eliminate the need to model state and effects correctly. Verify its support and configuration before relying on it.

## Validation

Check both Android and iOS because runtime, view, image, and build behavior differs. Include physical devices for gestures, animation, camera, maps, and sensors. Component render counts are diagnostic evidence, not the user-facing result.
