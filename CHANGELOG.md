# Changelog

All notable changes to the DPOM specification are recorded here. The format
follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and versions
follow [Semantic Versioning](https://semver.org/).

## [0.1.1] - 2026-10-24

### Changed

- Measure is defined as two-sided: the return attributable to the decision
  against a counterfactual, and the fully loaded cost of producing it across
  the landscape. The net is the unit economics of the decision system.
- Monitor is identified as the source of most of the cost side; Manage acts on
  the net. The three Ms link in one direction: Monitor supplies cost, Measure
  computes the net, Manage decides.
- Non-monetary outcomes are translated into a comparable unit as a recorded
  measurement step.

### Added

- Conformance item: fully loaded cost is known and compared to measured return.
- Glossary entries: unit economics of a decision system; fully loaded cost.

## [0.1.0] - 2026-10-24

### Added

- Initial landscape: the four regions (Data, Prediction, Outcome, Measure).
- The outcome loop as the path across the landscape.
- The decision handoff between Prediction and Outcome.
- Measure as the headline fourth region, with Monitor and Manage as supporting
  practices.
- Draft minimum conformance checklist.
- README as landing page, specification skeleton, citation file, licenses
  (CC BY 4.0 for text, Apache 2.0 for code).
