# DPOM Specification

**Version 0.1.0 · 2026-10-24 · Draft**

Data · Prediction · Outcome · Measure. A landscape for applied machine learning
in business, laid out so that the outcome loop can close.

This document is the normative text. The [README](README.md) is the summary.
Version history is in [CHANGELOG.md](CHANGELOG.md).

## 1. Scope and non-goals

DPOM describes the landscape an applied machine learning system occupies in a
business and the path across it that produces a measurable outcome. It is
technology-agnostic and applies equally to statistical models, machine
learning, and generative systems whose outputs drive decisions.

DPOM is not a model lifecycle, an MLOps reference architecture, or a software
delivery process. It does not prescribe tools. It does not replace experiment
design or causal inference methods; it says where they sit and what they owe.

## 2. Definitions

*To be developed.* Terms to define: landscape, region, border crossing, decision,
policy, action, outcome, counterfactual, attribution, the outcome loop, open
loop, closed loop, applied, exploratory.

## 3. The landscape

DPOM has four regions. Each holds a set of concerns, and each has a border that
something must cross to reach the next.

### 3.1 Data

*To be developed.* What the region holds. What crosses its border into
Prediction: a dataset fit for a named decision.

### 3.2 Prediction

*To be developed.* What the region holds: the model, the policy, the action.
What crosses its border into Outcome: a recorded decision, not a model output.

### 3.3 Outcome

*To be developed.* What the region holds: the business quantity the decision was
meant to move, observed in the world. What crosses its border into Measure: an
observed outcome tied to the decision that preceded it.

### 3.4 Measure

*To be developed.* What the region holds: attribution against a counterfactual at
a stated confidence. What crosses its border back into Data and Prediction: a
decision about the system itself.

## 4. The outcome loop

*To be developed.* The path across the four regions, its entry condition (a
decision the business has agreed to make), its exit condition (a measured
result that changes what runs next), and the definition of an open loop.

## 5. The decision handoff

*To be developed.* The border between Prediction and Outcome. Why a prediction
has no outcome and a decision does. What a decision record must contain:
the prediction, the policy that turned it into an action, the action, the
actor, the time, and the basis.

## 6. Measure, Monitor, Manage

*To be developed.* Measure as the headline practice of the fourth region.
Monitor as the supporting practice that keeps the system healthy over time.
Manage as the supporting practice that turns measurement into a portfolio
action: scale, fix, or retire. The failure modes when either support is
mistaken for the headline.

## 7. Minimum conformance

*To be developed.* The shortest checklist that lets a team say an outcome loop
is running on a system. Draft:

- [ ] The decision the system makes is named and agreed by the business.
- [ ] The policy that turns a prediction into an action is written down.
- [ ] Every decision is recorded with its basis.
- [ ] The outcome quantity is defined before the system runs.
- [ ] A counterfactual exists and attribution is computed against it.
- [ ] The measured result has a named owner and a scale / fix / retire path.

## 8. Glossary

*To be developed.*
