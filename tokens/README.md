# Otafox Design Tokens

> Portable design decisions for independently built Otafox products.

## Files

| File | Responsibility |
| --- | --- |
| `primitives.json` | Raw color, space, radius, border, opacity, type, motion, elevation, layer, layout, icon, and touch scales |
| `semantic-light.json` | Light-mode roles that refer to primitives |
| `semantic-dark.json` | Dark-mode roles with the same paths as Light |
| `foundations.json` | Resolved cross-platform roles for typography, spacing, focus, motion, size, layout, elevation, and layers |
| `schema.json` | Local Otafox structural schema for metadata, token leaves, types, and recursive groups |

Every token leaf contains `value`, `type`, and `description`. Color aliases use
the `{color.family.step}` form. Cubic-bezier values are portable four-number
arrays; each consumer serializes them into its own runtime format.

The four token sources point to `./schema.json` and include `version`, `status`,
`updated`, and `source`. This is an Otafox contract, not a claim of DTCG format
conformance. The deliberate `value`/`type`/`description` shape preserves the
approved numeric, unit-neutral adapter boundary.

## Decision flow

Use the narrowest stable level:

1. A primitive answers “what values exist?”
2. A semantic color answers “what job does this color perform in this mode?”
3. A foundation answers “what reusable product rule do we implement?”
4. A component recipe answers “how does this control look and behave here?”

Product code should normally use semantic or foundation roles. Primitive names
are acceptable only inside an adapter, a documented visualization, or a case
where no role exists yet. Add a role instead of spreading a primitive through
consumer code.

## Color contract

Neutral values carry most of the interface. Ember is reserved for brand
emphasis, current or selected state, visible focus, links, and bounded primary
actions. Success, warning, danger, and information keep separate green, amber,
red, and blue scales.

Light and Dark expose identical semantic paths. A status treatment combines at
least two signals, such as color plus icon, text, shape, or position. Never use
Ember to mean warning and never use status colors as decoration.

`border.default` remains a quiet structural divider. Inputs, switches, and
other controls use `control.border` state roles instead. Their default, hover,
focus, selected, disabled, and invalid colors reach at least 3:1 against the
mode surface; behavior, labels, focus rings, and error text remain additional
signals.

## Typography contract

- Geist: display and headings.
- Inter: body, labels, navigation, and controls.
- Commit Mono: code, identifiers, runtime versions, hashes, timestamps, and
  other technical values.

Consumers may use a system fallback while a font loads or where platform font
licensing and bundling differ. The role, size, weight, and line-height hierarchy
must remain intact. Tracking is numeric in em units: body and controls use zero,
headings tighten from -0.01 to -0.03, and captions may use 0.01.

## Responsive and dense layout

Breakpoints are 640, 768, 1024, 1280, and 1536. The responsive grid moves from
4 columns with a 16-unit gap and gutter, to 8 columns with 24, and then 12
columns with 32. Content widths remain 640, 960, and 1200.

Comfortable, compact, and dense row rhythms are 48, 40, and 36. The 36-unit
dense row is for read-only data. Any interactive target inside a compact or
dense composition still occupies at least 44 units, using layout or hit-area
expansion rather than shrinking the target.

## Interaction contract

- Minimum target: 44 × 44 units; native controls should prefer 48 × 48.
- Focus uses a visible two-unit ring with a two-unit offset where the platform
  supports an offset.
- Default transitions use 180 ms. Reduced motion resolves to zero duration.
- Disabled controls remain identifiable through more than opacity and cannot
  trigger their action.
- Hover is an enhancement for pointer devices, not the only interaction cue.

## Consumer adapters

This repository is not a runtime design-token package. Each product records the
source version and maps the portable values idiomatically:

- Next.js app: component-owned Tailwind recipes and Base UI states;
- Expo/React Native: typed token objects consumed by `StyleSheet` recipes;
- documentation: Fumadocs layout and local Tailwind recipes;
- static assets and package docs: copied, versioned derivatives.

Do not create an untyped global bag of class names or force CSS variables into
consumers that have explicitly chosen local recipes. Adapter drift is caught by
parity tests and review against this repository.

## Editing and release

1. Update the primitive only when the available scale changes.
2. Update both semantic mode files in one change.
3. Update foundations when a cross-platform rule changes.
4. Run the contract tests.
5. Record the change and affected consumers in the release evidence.
6. Migrate consumers deliberately; do not silently change copied values.

Run:

```bash
node --test scripts/verify-design-assets.test.mjs scripts/verify-design-tokens.test.mjs
```

See [`../DESIGN.md`](../DESIGN.md) for usage, accessibility, copy, and governance
rules that JSON cannot express.
