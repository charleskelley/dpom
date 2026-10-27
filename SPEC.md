# DPOM Specification

**Version 0.2.0 · 2026-10-27 · Draft**

Data · Prediction · Outcome · Measure. A landscape for applied machine learning
in business, laid out so that the outcome loop can close.

This document is the normative text. The [README](README.md) is the summary.
Version history is in [CHANGELOG.md](CHANGELOG.md).

## 1. Scope and non-goals

DPOM describes the landscape an applied machine learning system occupies in a
business and the path across it that produces a measurable outcome. It is
technology-agnostic and applies equally to statistical models, machine
learning, and generative systems whose outputs drive decisions.

DPOM holds at two altitudes without changing shape. At the altitude of a team, a data
science function runs the loop for the models and business units it supports: Data usually
begins at a warehouse or feature store, and Measure asks whether each model's decisions paid
for themselves. At the altitude of an organization, the same four regions span the business:
Data from source systems to the stores that serve prediction, Prediction including
quantitative analysis and the business rules and suppressions that gate it, Outcome as the
profit and loss lines those decisions move, and Measure as attribution and activity-based
costing that tie the decision portfolio to profitability. A definition, border, or
conformance item that reads true at only one altitude is practice, not framework, and
belongs in a team's own handbook.

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
a stated confidence, and the fully loaded cost of producing the outcome. What
crosses its border back into Data and Prediction: a decision about the system
itself.

Measure is two-sided by definition.

**The return side.** What the decision returned, attributed against a
counterfactual, at a stated confidence. This is the question most teams never
answer.

**The cost side.** What it cost, across the whole landscape, to produce that
return: data acquisition and pipelines, model development, serving and
inference, the people who build and run it, and the measurement and monitoring
work itself. A model that lifts an outcome while consuming more than the lift is
worth is a loss, and a one-sided measurement would call it a success.

**The net.** Return less cost is the unit economics of the decision system. It is
the quantity Manage acts on, and it is the only basis on which scale, fix, or
retire can be decided rather than argued.

Outcomes that are not denominated in money at the point of observation (risk
avoided, a regulatory finding that did not happen, customer harm prevented) are
translated into a comparable unit as a measurement step, with the translation
and its assumptions recorded alongside the result.

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
Monitor as the supporting practice that keeps the system healthy over time and
supplies most of the cost side of measurement: compute, storage, latency,
incident load, retraining frequency. Manage as the supporting practice that
turns the net measurement into a portfolio action: scale, fix, or retire. The
three link in one direction: Monitor supplies cost, Measure computes the net,
Manage decides. The failure modes when either support is mistaken for the
headline.

## 7. Minimum conformance

*To be developed.* The shortest checklist that lets a team say an outcome loop
is running on a system. Draft:

- [ ] The decision the system makes is named and agreed by the business.
- [ ] The policy that turns a prediction into an action is written down.
- [ ] Every decision is recorded with its basis.
- [ ] The outcome quantity is defined before the system runs.
- [ ] A counterfactual exists and attribution is computed against it.
- [ ] The fully loaded cost of running the system is known and compared to the
      measured return.
- [ ] The measured result has a named owner and a scale / fix / retire path.

## 8. Glossary

*To be developed.* First entries:

**Unit economics of a decision system.** The measured return attributable to a
system's decisions, less the fully loaded cost of producing them, over a stated
period. The quantity Manage acts on.

**Fully loaded cost.** Every cost the landscape incurs to produce the outcome:
data, development, serving, people, measurement, and monitoring. Not the
inference bill alone.
