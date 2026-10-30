# Burnt Orange & Charcoal

## Design Palette & Usage Guidelines

DPOM is a sibling of [DecisionLedger](https://github.com/charleskelley/decision-ledger),
the reference implementation of its decision record. The two share one visual
family: the same charcoal, the same backgrounds, surfaces, borders and muted
grey, and the same typefaces. Each has one accent of its own. DecisionLedger's is
deep teal. DPOM's is burnt orange. Where a token below is marked *shared*, its
value is DecisionLedger's and should change only if both change together.

### Why orange

DecisionLedger's categorical palette assigns burnt orange to enforcement, action
and downstream effects. That is DPOM's territory: the decision taken and the
outcome it moves. Taking the family's own action colour as DPOM's accent states
the relationship without a word. Orange is also the near complement of teal, so
the two marks and the two sites sit together without competing. Within the
landscape diagram, the warm accent separates the business side (the regions and
the loop) from the cool, technical layers beneath them.

The light-theme value is one step darker than DecisionLedger's series colour so
that it meets WCAG AA for small text on the page background. The dark-theme
value is DecisionLedger's series colour exactly.

### Why charcoal over pure black

Shared reasoning with DecisionLedger: pure black against white is stark. The
warm charcoal (`#1c2024`) has a subtle blue-grey undertone that pairs with both
accents and feels considered rather than generic. On dark themes the matching
light grey (`#e6eaed`) avoids the harshness of pure white on dark.

### Dark/light theme parity

Every colour has a light and a dark variant. Switching themes should feel like
the same brand in different lighting. The accent lifts on dark (`#e68a52`
against `#b85524`) to keep equal visual weight, as the teal does in
DecisionLedger. Muted lightens one step on dark so that small labels remain
readable, which DecisionLedger's own accessibility note recommends.

## Color Tokens

### Primary Palette

| Token          | Light Theme | Dark Theme | Role                                                                                   |
|----------------|-------------|------------|----------------------------------------------------------------------------------------|
| **Structure**  | `#1c2024`   | `#e6eaed`  | Primary text, headings, flow arrows, high-emphasis UI elements. *Shared.*              |
| **Accent**     | `#b85524`   | `#e68a52`  | The outcome loop, region outlines, links, interactive elements, accent labels. DPOM's own. |
| **Record**     | `#0d9488`   | `#14b8a6`  | The decision handoff and the decision record only. DecisionLedger's accent.           |
| **Background** | `#f6f7f8`   | `#111416`  | Page background, canvas. *Shared.*                                                     |
| **Surface**    | `#e9ecef`   | `#1a1e21`  | Cards, panels, code blocks, the bands in the landscape diagram. *Shared.*              |
| **Border**     | `#d5d9dd`   | `#262c30`  | Dividers, card borders, table rules. *Shared.*                                         |
| **Muted**      | `#6b7b86`   | `#8a97a1`  | Secondary text, captions, labels, monitoring arrows. Dark is one step lighter.         |

### Extended Palette

| Token                | Light Theme              | Dark Theme               | Role                                                   |
|----------------------|--------------------------|--------------------------|--------------------------------------------------------|
| **Accent Subtle**    | `rgba(184,85,36,0.08)`   | `rgba(230,138,82,0.10)`  | Tinted backgrounds for callouts, tags, the loop pill   |
| **Accent Hover**     | `#9e4720`                | `#f0a474`                | Hover state for accent-coloured interactive elements   |
| **Structure Subtle** | `rgba(28,32,36,0.06)`    | `rgba(230,234,237,0.06)` | Very light emphasis backgrounds, zebra rows. *Shared.* |
| **Danger**           | `#c0392b`                | `#e05545`                | Errors, a loop that cannot close, a retire decision. *Shared.* |
| **Success**          | `#1a7a5a`                | `#2dcc8a`                | A closed loop, a positive net, a scale decision. *Shared.*     |
| **Warning**          | `#b8860b`                | `#daa520`                | Degraded measurement, drift, a fix decision. *Shared.*         |

### Infographic Palette

For charts, essays and diagrams where more than one series must be told apart.
The constraints are DecisionLedger's: distinguishable at small sizes, sufficient
contrast on Background and Surface in both themes, no collision with the
semantic colours, and graceful degradation for the common forms of colour vision
deficiency.

#### Categorical Series

Four slots, assigned in this fixed order and never cycled. Both sets pass the
lightness band, chroma floor, adjacent-pair colour-vision-deficiency separation,
normal-vision floor and contrast checks. If a chart needs more than four series,
the chart is wrong, not the palette.

| Token        | Light Theme | Dark Theme | Hue           | Suggested mapping                              |
|--------------|-------------|------------|---------------|------------------------------------------------|
| **Series 1** | `#b85524`   | `#d9773f`  | Burnt orange  | Primary series, reuses Accent for brand continuity |
| **Series 2** | `#5b6abf`   | `#6d7ad6`  | Indigo        | The counterfactual, the comparison group        |
| **Series 3** | `#0d9488`   | `#12a594`  | Teal          | The decision record, the treated group          |
| **Series 4** | `#b45dc9`   | `#bf6cd6`  | Violet        | A third model or policy under comparison        |

Teal as a chart series is permitted because a chart series is not a brand
element. The record rule below applies to brand and diagram use, not to data.

#### Sequential Ramp

Orange ramp, five stops, for a single metric that progresses from low to high.
Interpolate intermediate values in LCH, not HSL.

| Stop    | Light Theme | Dark Theme | Typical use                        |
|---------|-------------|------------|------------------------------------|
| **100** | `#f6e4d8`   | `#2b1a10`  | Floor, baseline                    |
| **300** | `#e2a67c`   | `#7d4524`  | Low-mid range                      |
| **500** | `#b85524`   | `#e68a52`  | Midpoint, matches Accent           |
| **700** | `#873d18`   | `#f0b48d`  | High-mid range                     |
| **900** | `#4f230d`   | `#f8dcc9`  | Ceiling, maximum                   |

DecisionLedger's teal and warm ramps may be used unchanged when a second metric
axis is needed.

#### Diverging Ramp

For a metric with a meaningful neutral centre: net return around zero, drift
around stable, attribution above and below the counterfactual. Indigo and orange
are the poles, with Surface as the midpoint so the ramp reads as emerging from
neutral in both directions.

| Stop   | Light Theme | Dark Theme | Position                        |
|--------|-------------|------------|---------------------------------|
| **−2** | `#5b6abf`   | `#6d7ad6`  | Strong negative, Series 2       |
| **−1** | `#a9b0dc`   | `#3d4680`  | Moderate negative               |
| **0**  | `#e9ecef`   | `#1a1e21`  | Neutral centre, reuses Surface  |
| **+1** | `#dca98a`   | `#7d4524`  | Moderate positive               |
| **+2** | `#b85524`   | `#e68a52`  | Strong positive, reuses Accent  |

Indigo and orange were chosen over red and green because the pair survives
every common colour vision deficiency. When the chart is a pass or fail status
rather than a signed quantity, use the semantic colours with an icon and a
label, never a ramp.

#### Infographic Backgrounds & Containers

| Token                 | Light Theme             | Dark Theme               | Role                                              |
|-----------------------|-------------------------|--------------------------|---------------------------------------------------|
| **Chart Background**  | `#ffffff`               | `#141618`                | Chart canvas, slightly offset from page Background |
| **Chart Grid**        | `rgba(28,32,36,0.07)`   | `rgba(230,234,237,0.07)` | Gridlines, barely visible                          |
| **Chart Axis**        | `#6b7b86`               | `#8a97a1`                | Axis lines and tick labels, reuses Muted           |
| **Annotation**        | `#1c2024`               | `#e6eaed`                | Callouts and value labels, reuses Structure        |
| **Annotation Subtle** | `rgba(28,32,36,0.50)`   | `rgba(230,234,237,0.50)` | Secondary annotations                              |

---

## Usage Guidelines

### Text

**Structure** is the default text colour for body, headings, navigation and any
primary content.

**Muted** is for secondary text: captions, timestamps, metadata, breadcrumbs,
diagram labels. On the dark theme use `#8a97a1`, not `#6b7b86`, for anything
below 14px.

**Accent** is for text that signals interactivity or importance: links, the
occasional emphasised term, labels on the loop. If more than about one tenth of
visible text is accent-coloured, the emphasis is lost.

### The record rule

Teal appears in DPOM material only where DecisionLedger's concern appears: the
decision handoff between Prediction and Outcome, the phrase "decision record",
and links into the DecisionLedger repository or documentation. It is never a
second accent and never decorative. This is the seam between the two brands, and
it is also the seam between the framework and its reference implementation. A
reader who knows one should recognise the other's colour the moment it appears.

### Backgrounds

**Background** is the page canvas. Flat, no gradients, no textures.

**Surface** is for anything that sits above the background: cards, panels, code
blocks, and the Monitor and Govern and Infrastructure bands in the landscape
diagram, which should recede behind the regions.

**Accent Subtle** is for tinted backgrounds behind accent-related content: the
outcome loop pill, a callout about closing the loop, a highlighted table row.

### Borders & Dividers

**Border** is the only border colour. Always 1px. For more emphasis use
Structure at reduced opacity, never a thicker line. The exceptions are the
landscape diagram's region outlines, which are Accent at 2.5px, and Outcome,
which is Accent at double weight to mark the entry point.

### Interactive Elements

Links and buttons rest on **Accent** and hover to **Accent Hover**. Active states
use the accent at 90% opacity. Focus rings are the accent at 50% opacity as a
2px offset outline. Disabled elements use Muted at 50% opacity.

### Status & Semantic Colors

In DPOM's context the three semantic colours map onto the exit of the loop.

**Success**: the loop closed and the net is positive; a scale decision.

**Warning**: measurement degraded, drift detected, cost rising toward return; a
fix decision.

**Danger**: a loop that cannot close, attribution that failed, a negative net; a
retire decision.

**Accent**: the loop itself, neutral activity, links.

### The Landscape Diagram

Region outlines and the loop in Accent. Outcome's outline at double weight. The
decision handoff diamond in Record at stroke 3, the only teal element. Flow
arrows between regions in Structure. Monitoring arrows and their labels in
Muted. Monitor and Govern and Infrastructure as Surface fills with a 1px Border
stroke. The loop pill filled with Accent Subtle and stroked in Accent. Region
titles in Structure, definitions in Muted, arrow labels and the loop subtext in
the monospace face.

### The Logo

To be designed. Constraints: Structure and Accent only, with Record permitted
if the mark references the decision handoff; stroke language compatible with
the DecisionLedger mark (round caps, a single accent element) so the two read as
siblings; readable at 16px.

### Code & Syntax Highlighting

| Syntax element | Colour                | Notes                                   |
|----------------|-----------------------|-----------------------------------------|
| Default text   | Structure             |                                         |
| Keywords       | Accent                | `import`, `return`, `if`, `class`       |
| Strings        | `#b8860b` / `#daa520` | The warning gold, warm against the orange but lighter |
| Comments       | Muted                 |                                         |
| Functions      | Structure             | May be bold                             |
| Numbers        | `#1a7a5a` / `#2dcc8a` | The success green                       |
| Operators      | Muted                 |                                         |

---

## Typography

Identical to DecisionLedger, so that the two sites read as one family.

**Headings and body:** Outfit. Headings at weight 600, body at 400.

**Monospace (code, labels, metadata, the tagline):** JetBrains Mono.

**Wordmark:** "DPOM" in Outfit 600 with 3px letter-spacing. **Tagline:** "closing
the outcome loop" in JetBrains Mono, Muted.

---

## Accessibility Notes

| Combination                           | Contrast Ratio | Rating          |
|---------------------------------------|----------------|-----------------|
| Structure on Background (light)       | 15.3:1         | AAA             |
| Structure on Background (dark)        | 15.3:1         | AAA             |
| Accent on Background (light)          | 4.5:1          | AA              |
| Accent on Surface (light)             | 4.1:1          | AA (large text) |
| Accent on Background (dark)           | 7.2:1          | AAA             |
| Accent on Surface (dark)              | 6.5:1          | AA              |
| White on Accent (light), buttons      | 4.8:1          | AA              |
| Structure on Accent (dark), buttons   | 6.3:1          | AA              |
| Record on Background (light)          | 3.5:1          | AA (large text) |
| Record on Background (dark)           | 7.4:1          | AAA             |
| Muted `#6b7b86` on Background (light) | 4.1:1          | AA (large text) |
| Muted `#8a97a1` on Background (dark)  | 6.2:1          | AA              |

Record teal on the light background fails AA for small text, as it does in
DecisionLedger. Use it for strokes, tags and links at 14px or larger, never for
running text. Accent on light Surface is just under the small-text threshold:
links inside cards should be 14px or larger, or sit on Background.
