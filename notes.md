# Notes

Working insights captured while the framework is built out. Each entry is dated, names the
region it belongs to, and says where it should land: the spec, an essay, DecisionLedger, the
measurement library, or a team handbook. Entries are raw and may be wrong. Nothing here is
normative until it reaches `SPEC.md`. Newest first.

## 2026-10-31 · Data · Data position essay

A model does little more than encode business rules in an algorithm or expose patterns the
data already holds. The value a decision system delivers is latent in the Data region before
any model exists; Prediction surfaces it and turns it into a decision. Two consequences.
First, the work of transforming records and signals into an analytical mart or feature
store, the factory and store split, is where most of the leverage is, and it is the part
most teams underinvest in because it looks like plumbing. Second, a weak Data region cannot
be rescued downstream: no method, from a rules engine to a large model, can expose a pattern
that was never captured or was captured untrustworthily. This is why the Data box in the
landscape says "transformed into the foundation that drives decisions" rather than naming a
pipeline.
