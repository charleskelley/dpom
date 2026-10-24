# DPOM

**Data · Prediction · Outcome · Measure.** A landscape for applied machine
learning in business, laid out so that the outcome loop can close.

Most enterprise machine learning is exploration dressed as production. A model
earns the word *applied* only when the loop closes: the decision it drove is
recorded, the outcome is measured against a counterfactual, and the result
feeds back into what runs next. Everything else is research. Research has a
place, but it cannot be the primary job of a data science function, because
the business does not sell models or technology. It sells outcomes.

## A landscape, not a lifecycle

DPOM is not a model lifecycle, an MLOps pipeline, or a delivery process. Those
describe how a system is built and run, and each of them lives *inside* one
region of the landscape. DPOM describes the terrain a model has to cross before
anyone can say what it was worth. Lifecycles run within the regions. The
outcome loop runs across them.

## The four regions

**Data.** What the business knows, how it is captured, and how it is kept
trustworthy enough to act on. Pipelines, quality, lineage, and access live here.

**Prediction.** Where a model turns data into a claim about the future, and
where that claim is turned into a decision. A prediction on its own has no
outcome. The region ends at a recorded decision, not at a model output.

**Outcome.** What happened to the business because of the decision. Revenue,
cost, risk, retention, or whatever the decision was meant to move. The outcome
belongs to the business, not to the model.

**Measure.** Two questions. Whether the outcome is attributable to the
decision, against a counterfactual, at a stated confidence. And what it cost,
across the whole landscape, to produce that outcome. The net of the two is the
unit economics of the decision system. This is the region most organizations
never build, and it is the one that decides whether the work was applied or
exploratory.

## The outcome loop

The loop is the path across the landscape. It is the point of the whole thing.

1. Data is assembled for a decision the business has agreed to make.
2. A prediction is produced and turned into a decision by an explicit policy.
3. The decision and its basis are recorded.
4. The outcome is observed and attributed against a counterfactual.
5. The measured result changes what runs next: scale it, fix it, or retire it.

If any step is missing, the loop is open, and the system is producing
predictions rather than outcomes.

## Two things the landscape makes explicit

**The decision handoff.** Between Prediction and Outcome sits a decision: the
policy that turns a score into an action, and the action itself. Most teams
stop at the model output and never write the policy down, which is why their
loops never close. DPOM treats the handoff as a first-class border crossing
with its own record.

**Measure, with Monitor and Manage beside it.** Measure is the headline, because
it is what the business is owed. Two supporting practices sit around it.
*Monitor* is the technical health of the system over time, the domain of
MLOps, and it is also where most of the cost side of measurement comes from:
compute, storage, latency, incident load. *Manage* is the portfolio action the
net measurement forces: scale, fix, or retire. Monitoring without measurement
keeps a system healthy while it produces nothing. Measurement without
management produces a report nobody acts on.

## Status

Version 0.1.1, draft. The framework text lives in [`SPEC.md`](SPEC.md); changes
are tracked in [`CHANGELOG.md`](CHANGELOG.md).

## How to cite

See [`CITATION.cff`](CITATION.cff). In prose: Kelley, C. (2026). *DPOM: Data,
Prediction, Outcome, Measure. A landscape for applied machine learning in
business.* Version 0.1.1.

## License

The framework text, specification, and essays are licensed under
[CC BY 4.0](LICENSE). Any code samples and schemas in this repository are
licensed under [Apache 2.0](LICENSE-APACHE). The names DPOM and The Outcome
Loop are used to identify this work and its author; the licenses grant no
rights to them.
