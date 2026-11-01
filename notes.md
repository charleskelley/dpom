# Notes

Working insights captured while the framework is built out. Each entry is dated, names the
region it belongs to, and says where it should land: the spec, an essay, DecisionLedger, the
measurement library, or a team handbook. Entries are raw and may be wrong. Nothing here is
normative until it reaches `SPEC.md`. Newest first.

## 2026-11-01 · Data · Spec §3.1 (one sentence) and Data position essay

**The feature factory and store split.** The field treats the feature store as the interface
between Data and Prediction. In practice the store is the counter, not the workshop. Feature
stores are built for the serving side of the border: an offline and an online copy of the same
values, point-in-time correct retrieval for training sets, consistency between training and
inference, a catalog of definitions, light recombination of what is already there. The work
that creates the goods, turning records and signals into aggregates, encodings, and derived
measures, runs upstream in the warehouse and batch and stream engines. The store sells what the
factory makes. When one data platform owns both, the sourcing of raw material, the making, and
the selling, it is the vertically integrated firm: mine to market. The analogy also names what
goes wrong when the factory is treated as part of the store.

**Vetting against the field (searched 2026-11-01).** The split is real and already stated by the
people who build feature stores, though nobody has named it or drawn the economic analogy.

- Feast's own documentation says it is "not a general purpose data pipelining system," does
  "not manage or orchestrate complex workflow DAGs," is "not a replacement for your data
  warehouse," and that teams "leverage tools like dbt to manage upstream data transformations."
  That is the store disclaiming the factory in its own words.
- Hopsworks splits every system into feature pipelines, training pipelines, and inference
  pipelines with the store between them. The store is explicitly the thing pipelines write to
  and read from, not the thing that computes.
- Eugene Yan's hierarchy of needs for feature stores (February 2021: access, serving,
  integrity, convenience, autopilot) places the store's purpose in access and serving. His
  Monzo example syncs tables already built in the analytics stack, leaving the transformation
  upstream. His Uber and Alibaba examples compute real-time features inside the store, which is
  the first qualification below.
- Chalk's "feature store vs feature engine" draws almost the same line from the vendor side:
  "feature stores are databases that serve pre-computed values," computation "happens upstream,
  before storage," and the store cannot say how a value was derived. Their fix is to move
  compute into the store, which is a product position, not a refutation of the split.
- Tecton and Databricks use "feature platform" for the bundle of transformation, orchestration,
  storage, and serving. Both say a platform orchestrates existing engines rather than replacing
  them. That is the integrated firm: the platform owns the factory and the store but still buys
  the machines. Airbnb's Chronon and Uber's Palette are the in-house versions: one definition
  generates the batch and streaming jobs that write a key-value store, and serving only reads
  from it. Even inside the integrated firm the factory and the counter are separate rooms.
- Prior metaphors are weaker. Teradata's "data factory" (Hillman, 2021) manufactures data
  products and puts the feature store at the center as a repository of pre-prepared data, which
  conflates the two. JFrog's "ML kitchen pantry" is the store without the factory. The
  "feature store as a data warehouse for features" line is common and wrong in the same way.
  No source found uses factory and store as a pair, vertical integration, or mine to market.
  No source uses "feature verticals." The name is ours.

**Qualifications the essay has to carry.**

- Real-time and on-demand features are computed at request time, inside or beside the store.
  That is a small workshop at the back of the shop, and it exists because some goods spoil too
  fast to ship from a factory. It does not move the bulk of feature engineering.
- Managed platforms are folding batch transformation into the store product. The split is
  still there as a division of labor and of cost, even when one vendor bills for both.
- The analogy must not become a tool recommendation. The factory is wherever a team's
  transformation runs. The store is whatever serves it. DPOM names the split and what crosses
  it, not the products.

**Why this matters to the framework.** It gives Data an internal border, factory to store,
with its own crossing rule, and it explains the 2026-10-31 note on leverage: the leverage is in
the factory, the spend and attention go to the store. For Measure, the factory is a large part
of the fully loaded cost side and is usually the part left out when a team costs "the model."
At the team altitude Data begins at the warehouse or feature store, so the team is often a
store that buys from someone else's factory; at the organizational altitude the firm is the
integrated company and the question is whether the whole chain pays. The analogy reads true at
both. Candidate for one sentence in §3.1 ("Data holds the factory and the store; a dataset fit
for a named decision is what crosses to Prediction") and a full argument in the Data position
essay. "Feature verticals" is a possible essay title; it is not a spec term.

Sources: docs.feast.dev; docs.hopsworks.ai/latest/concepts/fti; eugeneyan.com/writing/
feature-stores; chalk.ai/blog/feature-store-vs-feature-engine; databricks.com/blog/
what-is-a-feature-platform; teradata.com/Blogs/Building-Data-Factories-to-Create-Thousands-
of-Data-Products; Uber Feature Store Summit 2022 deck via hopsworks.ai; Airbnb Chronon
summaries via zenml.io.

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
