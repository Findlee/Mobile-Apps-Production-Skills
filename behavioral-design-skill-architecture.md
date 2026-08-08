# Архитектура AI-скиллов по поведенческому дизайну

## Назначение

Пакет превращает поведенческую науку в повторяемые рабочие процессы для AI-агентов. Он подходит для мобильных и веб-приложений, сервисов, политик, коммуникаций, внутренних процессов и других систем, влияющих на человеческое поведение.

Скиллы организованы по задачам, а не по книгам. Тексты источников не включены: пакет содержит оригинальный процедурный синтез, проверочные вопросы и форматы результата.

## Состав

| Скилл | Назначение |
|---|---|
| `review-behavioral-design` | Провести сквозное ревью и вернуть единый приоритизированный backlog |
| `design-behavior-change` | Спроектировать поведенческое вмешательство от цели до измерения |
| `diagnose-behavior-barriers` | Найти и ранжировать причины, мешающие целевому поведению |
| `design-choice-architecture` | Спроектировать варианты, defaults, порядок, описание, трение и feedback |
| `design-healthy-habit-loop` | Создать полезное повторяемое поведение без компульсивных механик |
| `design-behavioral-incentives` | Согласовать стимулы, метрики, сигналы и желаемый результат |
| `audit-decision-quality` | Снизить шум и bias в повторяющихся человеческих и AI-assisted оценках |
| `audit-behavioral-ethics` | Найти манипуляции, sludge, потерю автономии и риск вреда |
| `design-behavior-experiments` | Спроектировать причинную проверку поведения, механизма и результата |
| `assess-intervention-scale` | Проверить переносимость, масштабируемость и last-yard delivery |

## Оркестрация

`review-behavioral-design` является основной точкой входа для ревью проекта. Он:

1. определяет пользователя, ценность, outcome и критические journeys;
2. диагностирует барьеры через COM-B, CREATE и B=MAP;
3. проверяет consequential choices;
4. подключает habit-аудит только при необходимом повторении;
5. подключает incentive-аудит только при наличии наград, штрафов, pricing или performance metrics;
6. подключает noise-аудит только для повторяющихся judgment systems;
7. всегда выполняет этический проход;
8. проверяет measurement и causal experiment readiness;
9. оценивает transfer и scale только при переносе или расширении эффекта;
10. объединяет результаты в один backlog, не дублируя поверхностные симптомы.

Пакет дополняет UI/UX-набор репозитория. `review-product-experience` отвечает за сквозное качество продукта, а `review-behavioral-design` — за причины поведения, уместность вмешательств, этику и доказательность.

## Ключевые модели

- **DECIDE и CREATE:** постановка задачи, behavioral map, проектирование и оценка.
- **COM-B и TDF:** capability, opportunity, motivation и детализация барьеров.
- **Behaviour Change Wheel:** функции вмешательства и критерии APEASE.
- **B=MAP и Tiny Habits:** prompt, ability, motivation, tiny behavior и troubleshooting.
- **Healthy habit design:** контекст, повторение, reward, friction и habit discontinuity.
- **Choice architecture:** plausible paths, assembled preferences, defaults, option sets, order, descriptions и choice engines.
- **Incentive signals:** quantity/quality, short/long term, individual/team, innovation/failure, social и self-signaling.
- **Decision hygiene:** noise audit, scales, sequencing, independent judgments, aggregation и mediating assessments.
- **Trustworthy experiments:** OEC, A/A, SRM, Twyman's law, ramping, guardrails и institutional memory.
- **Scale assessment:** false positives, audience mismatch, unscalable ingredients, spillovers, marginal cost и last-yard tailoring.

## Книжные источники

- Stephen Wendel, *Designing for Behavior Change*, second edition
- BJ Fogg, *Tiny Habits: The Small Changes That Change Everything*
- Nir Eyal with Ryan Hoover, *Hooked: How to Build Habit-Forming Products*
- Richard H. Thaler and Cass R. Sunstein, *Nudge: The Final Edition*
- Daniel Kahneman, *Thinking, Fast and Slow*
- Susan Michie, Lou Atkins, and Robert West, *The Behaviour Change Wheel: A Guide to Designing Interventions*
- Nina Mažar and Dilip Soman, editors, *Behavioral Science in the Wild*
- Uri Gneezy, *Mixed Signals: How Incentives Really Work*
- Daniel Kahneman, Olivier Sibony, and Cass R. Sunstein, *Noise: A Flaw in Human Judgment*
- John A. List, *The Voltage Effect: How to Make Good Ideas Great and Great Ideas Scale*
- Wendy Wood, *Good Habits, Bad Habits: The Science of Making Positive Changes That Stick*
- Eric J. Johnson, *The Elements of Choice: Why the Way We Decide Matters*
- Ron Kohavi, Diane Tang, and Ya Xu, *Trustworthy Online Controlled Experiments: A Practical Guide to A/B Testing*

## Открытые и обновляемые источники

- [Behaviour Change Technique Ontology](https://pubmed.ncbi.nlm.nih.gov/37593567/)
- [Field testing the transferability of behavioural science knowledge](https://www.nature.com/articles/s41562-023-01813-4)
- [RCTs to Scale](https://onlinelibrary.wiley.com/doi/abs/10.3982/ECTA18709)
- [FTC: Bringing Dark Patterns to Light](https://www.ftc.gov/system/files/ftc_gov/pdf/P214800%20Dark%20Patterns%20Report%209.14.2022%20-%20FINAL.pdf)
- [EU Digital Services Act Q&A](https://digital-strategy.ec.europa.eu/en/faqs/digital-services-act-questions-and-answers)

Перед high-stakes, legal или policy применением обновляемые источники необходимо перепроверять.

## Принципы синтеза

- Оптимизировать user-valued real-world outcome, а не engagement сам по себе.
- Рассматривать поведенческие механизмы как проверяемые гипотезы.
- Проектные данные ставить выше общей теории.
- Диагностировать capability и opportunity до попытки повысить motivation.
- Предпочитать минимально интрузивное эффективное вмешательство.
- Сохранять понятный выбор, reversal, exit и recovery.
- Измерять outcome, target behavior, mechanism и harm guardrails раздельно.
- Предполагать, что эффект может уменьшиться, исчезнуть или развернуться при переносе и масштабе.
