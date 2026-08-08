# Mobile Performance Measurement

## Reproduction record

Capture:

- app build and commit;
- framework, runtime, and OS versions;
- physical device model, refresh rate, power mode, thermal state, and available storage;
- cold or warm launch and cache state;
- dataset size and media characteristics;
- network shaping and server environment;
- exact interaction script;
- profiler and sampling configuration.

Avoid profiling with unrelated logging, screen recording, or debugging overhead unless the same overhead exists in both comparisons and its effect is understood.

## Useful metrics

- startup to first frame, first usable content, and interactive state;
- frame build, UI, or raster duration and slow-frame count;
- input-to-visible-response latency;
- scroll blank area or missed content;
- CPU time by thread and hot function;
- allocation rate, retained memory, garbage collection, and peak memory;
- disk and database duration;
- network request duration and payload size;
- image decode, upload, and cache behavior;
- native-boundary call count and transferred data;
- energy or battery impact for sustained work.

Report median and relevant high percentiles or worst samples. Small test counts need raw values rather than false statistical precision.

## Bottleneck questions

1. Which thread or pipeline missed its deadline?
2. Was it busy, blocked, waiting, or repeatedly scheduled?
3. Is the cost proportional to visible data, total data, state fan-out, or repeated lifecycle work?
4. Does removing one subtree, image, request, or native call remove the symptom?
5. Is the problem startup-only, first-use-only, steady-state, or cumulative?
6. Does it reproduce after disabling network and data variability?
7. Is memory retained because of a true leak, cache policy, or expected ownership?

## Experiment rules

- Change one causal factor at a time.
- Run the same scenario multiple times and include warmup when appropriate.
- Separate cold and warm cache results.
- Measure on hardware representative of the minimum supported experience.
- Keep a short trace or profiler capture that another engineer can reproduce.
