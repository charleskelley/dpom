# AGENTS.md — working rules for DPOM

Read before editing anything in this repository. `CLAUDE.md` is a symlink to this file.

## What this repository is

DPOM (Data · Prediction · Outcome · Measure) is a **landscape for applied machine learning in
business, laid out so that the outcome loop can close.** The repository is the canonical,
citable home of the framework: `SPEC.md` is the normative text, `README.md` is the summary,
`CHANGELOG.md` is the version history, `CITATION.cff` is how to cite it. Everything else that
carries the framework (essays, talks, a future site) derives from the spec, not the other way
round.

The thesis the framework exists to carry:

> Most enterprise machine learning is exploration dressed as production. A model earns the
> word *applied* only when the loop closes: the decision it drove is recorded, the outcome is
> measured against a counterfactual, and the result feeds back into what runs next. Everything
> else is research, which has a place, but cannot be the primary job of a data science function.

Keep the three parts of that shape in anything that restates it: a provocative diagnosis, a
precise test (closing the loop), and a concession that scopes it.

## What it is not

- **Not a lifecycle, not an MLOps reference architecture, not a delivery process.** Those live
  inside one region each. DPOM describes the terrain across them. If a proposed addition is a
  stage, a step sequence, or a pipeline diagram, it belongs inside a region or in an essay, not
  in the landscape.
- **Not a tool recommendation.** DPOM is technology-agnostic. It names what each region holds
  and what must cross each border; it never names a product as the way to do it. Product names
  may appear only in essays that ask the test question of them.
- **Not a replacement for experiment design or causal inference.** It says where those sit and
  what they owe.
- **Not a method for generative systems only, or for classical models only.** It applies to any
  system whose outputs drive decisions.

## Structure to preserve

- **Four regions:** Data, Prediction, Outcome, Measure. Prediction ends at a *recorded
  decision*, not a model output. Measure is the headline fourth region and is **two-sided**:
  return attributed against a counterfactual at a stated confidence, less the fully loaded
  cost of producing it; the net is the unit economics of the decision system. The outcome
  is quantified in its own unit first (a score, a rate, a time); a stated proxy translates
  it into money, and the proxy may be absent at first deployment.
- **The outcome loop** is the path across the regions and the point of the whole thing. Entry
  condition: a decision the business has agreed to make. Exit condition: a measured result that
  changes what runs next (scale, fix, retire). Any missing step means an open loop.
- **Two things the landscape makes explicit:** the decision handoff (the border between
  Prediction and Outcome, with its own record), and Measure with Monitor and Manage beside it
  (Monitor supplies cost, Measure computes the net, Manage decides; they link in one direction).
- The three Ms are structure, not a name. Do not reintroduce "DPOM^3" or any superscript form.
- **Two altitudes, one landscape.** DPOM scales without changing shape. At the **team
  altitude**, a data science function runs the loop for the models and business units it
  supports: Data usually begins at a warehouse or feature store, and Measure answers whether
  each model's decisions paid for themselves. At the **organizational altitude**, the same
  four regions span the whole business: Data from source systems to sink, Prediction including
  quantitative analysis and the business rules and suppressions that gate it, Outcome as the
  P&L lines those decisions move, and Measure as attribution and activity-based costing that
  tie the decision portfolio to profitability. Any definition, border, or conformance item
  must read true at both altitudes. If it only holds at one, it is practice, not framework.
- **The team view leads; the organizational view is a second view.** The core audience for
  The Outcome Loop is DS/ML/AI leaders and engineers, and the primary diagram, the spec's
  worked detail, and the first essays are written at the team altitude. The organizational
  view (fully loaded data inputs from source systems, and the people and management cost that
  integrating outcomes into lines of business creates) gets its own diagram later, as a
  parallel track with explicit seams to the team view. Do not let organizational-altitude
  needs expand or dilute the team view; note them for the second view instead. The
  both-altitudes check above still applies to every definition, border, and conformance item.
- **Outcome is the entry point.** The loop is drawn left to right, but it is entered at
  Outcome: the business names the outcome it wants moved, then how it will be measured, and
  only then does Data and Prediction work begin. The emphasis on Outcome in the diagram marks
  the entry, not a ranking of the regions. Closing the loop starts continuous improvement.
- **Framework here, practice elsewhere.** This repository holds the reference and the
  checklists. How a particular team runs it, with named technologies, applications, and
  procedures, is written in that team's handbook. Nothing here depends on any one team's shape,
  tooling, or industry.

## Naming rules

- **DPOM** is the method name and the mark. Write it as four capitals, no periods, no
  expansion required after the first use on a page.
- **The Outcome Loop** is the thesis name and the book-facing phrase. The mark stays the bare
  two-word phrase; any domain word ("for applied machine learning", "for applied AI") lives in a
  subtitle or series name, never in the mark. It also works as a common noun ("run an outcome
  loop on every model"); use it that way in prose.
- Tagline: "DPOM, closing the outcome loop."
- Rejected names, do not revive: Outcome Engineering (a phrase in essays at most), Measured ML,
  Closed-Loop ML, Decision-to-Outcome, Monetization as a region name, anything built on "lift."
- Adjacent prior art to cite rather than absorb: Baiocchi & Rodu (2023), "outcome reasoning."

## Editing rules

1. Framework text changes go in `SPEC.md`, get a `CHANGELOG.md` entry under Keep a Changelog
   headings, and bump the version (semver: wording = patch, new definitions or conformance
   items = minor, a change to the regions or the loop = major). Update the version line in
   `SPEC.md`, `README.md`, and `CITATION.cff` together.
2. `README.md` summarizes; it never says something `SPEC.md` does not.
3. Sections marked *To be developed* are filled in the order they appear unless a change to a
   later section is needed to keep an earlier one true.
4. Voice: plain, declarative, present tense, short paragraphs. No marketing register, no
   em-dashes, no bullet lists where a sentence will do. Definitions are one sentence each.
5. The minimum conformance checklist stays short. Add an item only when a loop can be open
   without it.
6. Examples are fictional and domain-neutral. Never use a real company's data, product, or
   internal names. The companion reference implementation for the decision record is
   [DecisionLedger](https://github.com/charleskelley/decision-ledger); link it, do not
   duplicate it.
7. Licensing stays as is: CC BY 4.0 for text (`LICENSE`), Apache 2.0 for code
   (`LICENSE-APACHE`), no rights to the names. Do not add code until there is a stated reason
   for code to exist in this repository rather than in a companion one.

## Git

The author is the only committer. Agents stage changes with `git add`, run the clean-room
check, and propose a commit message; they never run `git commit`, and never rewrite history.
This is enforced by `.claude/settings.json` and `.claude/hooks/block-git-commit.sh`, and it is
deliberate: the repository is a knowledge and IP expression, not an application verifiable
against a specification, so every change is read and signed off by hand before it enters the
record.

Commit messages carry **no** `Co-authored-by`, `Signed-off-by`, or AI-attribution trailers,
ever. Format: Conventional Commits with scopes `spec`, `readme`, `changelog`, `cite`,
`essays`, `agents`, `meta`. A spec change and its changelog entry and version bump travel in
one commit.

## Essay and publication conventions

- Write in public first; the spec leads, essays follow, longer forms come last.
- Essay pattern: one position essay per region, then one essay per technique or product per
  region, each asking the same question: does this add to business-outcome understanding, or
  is it technically myopic?
- Essays may use the buzzword of the day in their titles; the spec and the mark never do.

## The test for any change

Before accepting an edit, answer in one line each:

- Does it help a reader close an outcome loop, or does it describe how to build something
  inside a region?
- Does it keep the framework technology-agnostic?
- Does it read true at both altitudes, a single team and a whole organization?
- Does it keep the thesis contestable and the test precise?
- Does it belong here, or in an essay, the decision-record implementation, or a team handbook?
