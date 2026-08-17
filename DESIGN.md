# Otafox Design System

> Your app, always up to date.

## Status and authority

| Field | Value |
| --- | --- |
| Status | Approved foundation; consumer migration in progress |
| Design-system version | 2.0.0 |
| Brand delivery revision | `brand-v2.0.0` geometry and `brand-v2.1.0` app-icon color derivatives; approved face and full-body inputs retained with checksums |
| Published | 2026-08-17 |
| Product category | Release control for React Native and Expo |
| Visual principle | Quiet operational confidence |
| Canonical marketing surface | `otafox/app` marketing routes |

This document is the authority for how Otafox should look, speak, and behave.
The files next to it carry different parts of that authority:

1. `DESIGN.md` owns intent, rules, and governance.
2. `brand/manifest.json` owns asset identity, revision, checksum, and consumer
   classification.
3. `tokens/primitives.json` owns available raw values.
4. `tokens/semantic-light.json` and `tokens/semantic-dark.json` own color roles.
5. `tokens/foundations.json` owns portable typography, spacing, motion, focus,
   sizing, layout, elevation, and layer roles.
6. `tokens/schema.json` owns the local `value`/`type`/`description` structural
   contract and required file metadata.
7. Consumer repositories own runtime-specific components and recipes.

If an implementation conflicts with this document, the implementation is
drift. If a token conflicts with the prose, the change is incomplete and must
be reconciled before release. Screenshots, mockups, copied assets, and legacy
code are never a higher source of truth.

The system is not distributed as a runtime package in version 2.0. Each
consumer records the source revision and implements an idiomatic adapter. This
keeps a Next.js class recipe, a React Native `StyleSheet`, and a Fumadocs theme
native to their platform without allowing the product decisions to diverge.
The token JSON shape is the local Otafox contract. It intentionally keeps
`value`, `type`, and `description` leaves and does not claim DTCG conformance.

## Product intent

### Audience

Otafox serves the people accountable for a React Native or Expo app after it is
already in users' hands. The primary users are mobile engineers, release
owners, product engineers, and on-call operators. They understand builds and
environments, but they should not need to reverse-engineer the control plane to
answer a release question.

### Problem

Store releases are slow, but not every change needs a new native binary. Teams
still need a controlled answer to four questions:

- Is this change eligible to ship as JavaScript?
- Which compatible app and environment can receive it?
- What is selected now, and when will a compatible app apply it?
- Can we change course without inventing a new incident workflow?

Feature flags add another operational layer. A simple switch can affect real
users, so environment, current state, consequence, and feedback must remain
visible at the moment of action.

### Desired action

The public experience should lead a qualified team to read the quickstart and
understand the boundary before integrating. The console and mobile app should
then make the next safe action obvious: choose the correct environment, inspect
the current state, make one intentional change, and verify the result.

### Friction to remove

- Ambiguous eligibility between JavaScript and native changes.
- Fear that an update or flag action is global when it is environment-scoped.
- Marketing claims that imply an SLA, adoption result, or hosted service before
  evidence exists.
- Dense dashboards where every panel competes for attention.
- Status represented by color alone.
- Rollback language that hides runtime compatibility and lifecycle timing.
- Decorative visual effects that make an operational tool feel less credible.

## Brand position and message hierarchy

Otafox is operational release control after an app is live. Safety and clarity
are the emotional center. Speed is a useful consequence, not the headline.

Use this hierarchy on public entry surfaces:

| Layer | Approved message |
| --- | --- |
| Category eyebrow | Release control for React Native and Expo |
| Brand promise | Your app, always up to date. |
| Mechanism | Ship signed JavaScript updates, control feature flags by environment, and roll back compatible releases. Built for changes that do not require a new native build. |
| Primary action | Read the quickstart |
| Secondary action | See how it works |
| Editorial proposition | The release is live. You still have options. |

The primary public action links to
`https://docs.otafox.com/docs/getting_started`. The secondary action moves to a
real product explanation on the same page. Pricing does not appear as an active
public offer until commercial availability has its own verified release
evidence.

### Slogan policy

The slogan is exactly `Your app, always up to date.` Do not change it to
“updated.” Keep it in English across locales until a specific localized brand
decision is approved.

The slogan is a brand promise, not an SLA. On high-intent surfaces it sits near
the mechanism and native-build boundary. Never use it to imply that every code
change is eligible, that store review is obsolete, that an app updates while it
is closed, or that Otafox can replace a native binary.

### Voice

Otafox sounds calm, informed, and direct. It names the object and the action:
release, runtime, environment, update, flag, compatible app. It does not make a
routine control sound heroic.

Prefer:

- `Select the production environment before changing this flag.`
- `Compatible apps apply the selected update on their next supported lifecycle event.`
- `No compatible update is selected for this runtime.`

Avoid:

- `Unlock limitless velocity.`
- `Deploy fearlessly in seconds.`
- `Everything is healthy.` when only a local status was checked.
- Generic headings such as `Powerful platform` or `Next-generation workflow`.

Sentence case is the default. Buttons begin with a specific verb. Helper text
explains a consequence or boundary; it does not repeat the label.

## Visual direction

Quiet operational confidence means the interface stays out of the way until a
decision needs attention. Warm graphite and paper-like neutrals carry the
structure. Otafox primary green marks the current choice, focus, and a bounded
primary action.
Semantic colors keep their literal jobs.

The hierarchy is built with typography, alignment, and space before decoration:

- One dominant headline or task per view.
- Surfaces are separated by border, spacing, or restrained elevation, not all
  three at once.
- Dense product data uses clear rows and aligned columns.
- Empty space is a structural tool, not unused canvas.
- Corners are controlled. Pills are reserved for badges and compact filters.
- Motion confirms state; it does not entertain during a release action.

Avoid the visual shorthand that makes software feel machine-generated:
gratuitous gradients, colored glow, glass panels, floating decorative orbs,
fake metrics, identical rounded cards for unrelated content, emoji as product
icons, and copy arranged into repetitive three-item slogans. Product imagery
must explain a real mechanism or state.

## Brand identity

### Taxonomy

| Element | Definition | Primary role |
| --- | --- | --- |
| Mark | Approved fox-face geometry in a `1254 × 1254` view box | Compact identity, navigation, favicon, and app-icon source |
| Wordmark | Authored vector Otafox letterforms inside the lockup | Formal brand identification |
| Lockup | Mark plus vector wordmark in a `228 × 64` view box | Headers, documents, partners, press, and standalone signatures |
| App icon | Platform-specific preview, iOS full-bleed source, and Android layers | Store and launcher generation |
| Favicon | Noncanonical derivative of the approved face | Browser icon generation |
| Editorial body | Approved full-fox geometry in a `1254 × 1254` view box | Large closing brand signature before the marketing footer |

The six canonical masters are transparent and one-color. Dark ink is
`#09090B`; inverse ink is `#FAFAFA`. Their paired files differ only by fill.
The negative space is authored geometry. Do not add a background to a master.

Keep clear space equal to one quarter of the rendered mark width on every side.
The compact mark may render no smaller than 16 px. The horizontal lockup may
render no smaller than 96 px wide. Use the mark beside live `Otafox` text when a
smaller horizontal treatment is needed.

The lockup's visible mark ink ends at x=60 and its wordmark begins at x=77: a
17-unit optical gap. Both align around the y=32 centerline. The `228 × 64`
view box has a 57:16 proportion (3.5625:1) and four units of right-side optical
space.

`app-icon/source.svg` is a rounded preview, never a store source. iOS uses the
opaque, full-bleed 1024 × 1024 `ios-source.svg` and applies its own corner mask.
Android uses separate 108 × 108 background, foreground, and monochrome layers;
mark geometry stays inside the centered 66 × 66 safe region. Platform tooling
may generate required raster sizes, but generated outputs remain derivatives.

Browser icons use `brand/favicon/source.svg` exclusively. The derivative keeps
the exact approved face paths on the original square canvas. Consumer tooling
may add optical canvas padding for a raster size, but it must not edit paths.

The full-body mark is editorial, not compact identity. Use it at meaningful
scale in a closing brand moment before the marketing footer. Never use it for
navigation, controls, favicons, launcher icons, or dense console surfaces.

Logo accessibility depends on context. A standalone linked lockup has the
accessible name `Otafox`. A mark beside visible `Otafox` text is decorative. An
editorial ornament is always decorative. Never announce the same name twice in
one control.

See `brand/README.md` for placement rules and `brand/manifest.json` for exact
source revisions and checksums.

## Color foundations

### Primitive families

- Neutral `0–950`: canvas, surface, border, type, disabled state, and structure.
- Otafox primary green `50–950`: brand emphasis and interaction.
- Green `50–950`: success only.
- Amber `50–950`: warning and caution only.
- Red `50–950`: danger, destructive action, and error only.
- Blue `50–950`: neutral information only.

Otafox primary green is not a status color. A success state never uses the
primary scale merely because both families are green. Status treatments combine
color with text, icon, shape, or position so their meaning survives color-vision
differences.

The primary scale is:

| Step | Value | Intended role |
| --- | --- | --- |
| 50 | `#F5FDF2` | Lightest brand surface |
| 100 | `#E8FAE1` | Light selected surface |
| 200 | `#D8F6CE` | Soft brand border and emphasis |
| 300 | `#C5F1B8` | Dark hover |
| 400 | `#B8EEA8` | Soft accent |
| 500 | `#B0EC9C` | Canonical primary fill |
| 600 | `#8DCE78` | Light hover and Dark pressed |
| 700 | `#66A957` | Light pressed |
| 800 | `#477D3D` | Accessible Light link, focus, and boundary |
| 900 | `#31572B` | Deep brand emphasis |
| 950 | `#173117` | Dark selected surface |

`#B0EC9C` is a fill and accent, not Light-mode body or link text. Use
`#09090B` on a primary solid. Light inline links, focus rings, selected
boundaries, and control boundaries use `#477D3D`; it reaches 4.92:1 on white.
The primary solid and dark ink reach 14.52:1. When a primary solid sits on a
Light surface, use a `#477D3D` boundary so the control shape remains visible.

### Core semantic roles

| Role | Light | Dark |
| --- | --- | --- |
| Canvas | `#FAFAFA` | `#09090B` |
| Surface | `#FFFFFF` | `#18181B` |
| Raised | `#FFFFFF` | `#27272A` |
| Overlay | `#FFFFFF` | `#27272A` |
| Scrim | `#09090B99` | `#000000B3` |
| Border subtle | `#E4E4E7` | `#27272A` |
| Border default | `#D4D4D8` | `#3F3F46` |
| Border strong | `#71717A` | `#71717A` |
| Text primary | `#09090B` | `#FAFAFA` |
| Text secondary | `#3F3F46` | `#D4D4D8` |
| Text muted | `#52525B` | `#A1A1AA` |
| Link | `#477D3D` | `#B0EC9C` |
| Interactive default | `#B0EC9C` | `#B0EC9C` |
| Interactive hover | `#8DCE78` | `#C5F1B8` |
| Interactive pressed | `#66A957` | `#8DCE78` |
| Interactive selected | `#477D3D` | `#B0EC9C` |
| Interactive focus | `#477D3D` | `#B0EC9C` |
| Interactive disabled | `#A1A1AA` | `#52525B` |
| Content on primary | `#09090B` | `#09090B` |

Selected is an indicator color, not permission to flood a large container with
full-strength primary green. Consumer recipes may apply it to a border, icon, switch
thumb, or a bounded translucent layer while retaining the semantic source.

Structural borders may remain quiet because they group content rather than
define an interactive boundary. Controls use a separate contrast-safe role:

| Control border state | Light | Dark |
| --- | --- | --- |
| Default | `#71717A` | `#71717A` |
| Hover | `#52525B` | `#A1A1AA` |
| Focus | `#477D3D` | `#B0EC9C` |
| Selected | `#477D3D` | `#B0EC9C` |
| Disabled | `#71717A` | `#71717A` |
| Invalid | `#DC2626` | `#F87171` |

Each control-border value reaches at least 3:1 against its mode's surface.
Measured ratios range from 4.83:1 to 7.73:1 in Light and 3.67:1 to 7.83:1 in
Dark. The automated contract recalculates every state rather than trusting this
recorded range.
Disabled and invalid states still require behavior, semantics, and text; the
border color alone never communicates the state.

### Breaking primary-color migration

Token revision `2.0.0` removes the `color.ember` primitive instead of keeping a
compatibility alias. Consumers must migrate to `color.brandGreen` and semantic
roles in the same release. The migration changes brand interaction only;
`color.green` continues to own success and the amber, red, and blue status
families remain unchanged.

### Status roles

Values are ordered as surface, border, text, and solid.

| Status | Light | Dark |
| --- | --- | --- |
| Success | `#F0FDF4`, `#16A34A`, `#166534`, `#15803D` | `#052E16`, `#16A34A`, `#86EFAC`, `#4ADE80` |
| Warning | `#FFFBEB`, `#D97706`, `#78350F`, `#92400E` | `#451A03`, `#D97706`, `#FCD34D`, `#FBBF24` |
| Danger | `#FEF2F2`, `#DC2626`, `#991B1B`, `#B91C1C` | `#450A0A`, `#DC2626`, `#FCA5A5`, `#F87171` |
| Information | `#EFF6FF`, `#2563EB`, `#1E40AF`, `#1D4ED8` | `#172554`, `#3B82F6`, `#93C5FD`, `#60A5FA` |

## Typography

Typography carries most of the visual identity:

- Geist is the display and heading voice. Use 600 for hierarchy; reserve 700
  for rare emphasis.
- Inter is the reading and control voice. Body is 16/24 at weight 400. Labels
  are 14/20 at weight 500.
- Commit Mono identifies code, runtime versions, release hashes, environment
  keys, timestamps, and technical values. It is not a decorative headline font.

The portable hierarchy is caption 12/16, secondary metadata 13/18, label
14/20, body 16/24, Console panel heading 20/28, medium heading 24/32, Console
page heading 28/36, large heading 32/40, feature heading 48/56, marketing
section heading 56/60, display 64/68, and marketing display 88/84. On compact
screens, responsive heading roles replace the largest role rather than shrinking
it unpredictably. Customer-facing prose never uses 10 or 11 px. The 12/16 role
is reserved for badges and genuinely auxiliary metadata.

Tracking is numeric in em units. Body, controls, and technical values use 0;
captions may use 0.01. Small headings use -0.01, large and feature headings use
-0.02, and the 64/68 display role uses -0.03. Consumers translate these values
into platform-native letter spacing without converting them into raw pixels.

Keep paragraphs at a readable measure, normally 45–75 characters. Use real
heading order in the document. Visual size never replaces semantic structure.
Fallback fonts may differ by platform, but line-height and hierarchy remain.

## Space, shape, and layout

The primitive space scale is based on four units with 2 px and 6 px optical
steps. Default inline gap is 8, component stack is 12, component inset is 16,
panel inset is 24, and section separation starts at 48.

Use radii by role:

- Controls: 8.
- Panels: 12.
- Large feature surfaces: 16.
- Badges and pills: 999.

Do not turn every surface into a pill or a large rounded card. Tables, grouped
rows, and code blocks can use tighter shapes when the content benefits from
strong alignment.

Layout widths are 640 for focused reading or forms, 960 for default content,
and 1200 for wide dashboards and marketing compositions. Horizontal gutters
are 16 on compact screens, 24 by default, and 32 on wide screens. A layout may
use fewer columns as space contracts; it must not preserve desktop density by
making controls too small.

Responsive breakpoints are 640, 768, 1024, 1280, and 1536. The grid uses 4
columns with a 16-unit gap/gutter, 8 columns with 24, and 12 columns with 32.
Breakpoints describe available space, not device brands, and components adapt
to their container before relying on the page breakpoint.

Product density has four named rhythms. Console action rows are 52 with 14/16
vertical/horizontal padding. Comfortable rows are 48 with 12/16
vertical/horizontal padding. Compact rows are 40 with 8/12 padding. Dense rows
are 36 with 6/12 padding and are reserved for read-only data. Interactive
controls inside compact or dense layouts retain a 44-unit target through layout
or hit-area expansion.

Borders are usually one unit. Visible focus uses a two-unit ring and a two-unit
offset where supported. Elevation steps are 0, 1, 3, and 8; use the lowest step
that separates the layer. Modal structure still requires a scrim and focus
management, not only a stronger shadow.

## Icons and motion

Use a consistent line-icon family in product UI. Sizes are 16, 20, 24, and 32.
An icon inherits the semantic color of its content unless it carries a literal
status role. Do not mix emoji, filled illustrations, and line icons in the same
control language.

Default state transitions are 180 ms with `[0.2, 0, 0, 1]`. Micro-interactions
may use 120 ms. Short entrances may use 280 ms with `[0.16, 1, 0.3, 1]`; exits
use `[0.4, 0, 1, 1]`. Reduced motion resolves duration to zero. Do not animate
release numbers, health states, or progress merely to attract attention.

Motion may:

- confirm that a control changed state;
- preserve context when a panel opens or closes;
- explain direction in navigation;
- indicate indeterminate work with an accessible text equivalent.

Motion may not delay an action, conceal state, or imply progress the backend
does not report.

## Component contract

Components consume roles; they do not invent a private palette. Each component
owns its runtime recipe, semantics, and state behavior. A shared component is
preferred when the same interaction appears in two or more product contexts.
Use `border.default` for quiet structure and `control.border.*` for interactive
boundaries. This distinction prevents decorative separators from becoming
heavy while keeping controls perceivable at the 3:1 non-text threshold.

Every interactive component accounts for these states when applicable:

| State | Required expression |
| --- | --- |
| Default | Clear label, role, hit target, and consequence |
| Hover | Pointer-only enhancement with no hidden information |
| Pressed | Immediate visual response using the pressed role |
| Focus visible | Two-unit visible ring with sufficient contrast |
| Selected | Explicit current indicator plus text, icon, or control position |
| Disabled | Unavailable behavior, disabled semantics, and non-color cue |
| Loading | Stable label or progress description; no duplicate submission |
| Invalid | Field relationship, specific message, and danger treatment |
| Success | Confirmed result described in text; no inferred backend health |

### Core primitives

- **Button:** one primary action per local decision area. Secondary and ghost
  variants preserve hierarchy. Danger is reserved for destructive outcomes.
- **Icon button:** always has an accessible name. A tooltip helps sighted
  pointer users but does not replace the accessible name.
- **Input and text field:** visible label, persistent value, helper or error
  relationship, and no placeholder-only labeling.
- **Switch:** names the setting, shows the current value, and exposes the
  environment or scope before a consequential change.
- **Panel:** groups one coherent topic. It is not the default wrapper for every
  paragraph.
- **Banner:** uses one semantic status, an icon, a direct message, and a clear
  next action when action is possible.
- **Badge:** names a compact state. Color is secondary to text.
- **Tooltip:** offers supplemental context only. Essential content remains
  available without hover.
- **Separator:** expresses real structure and stays visually quiet.
- **Empty state:** explains what is absent, why that matters, and the next
  available action. It never fabricates sample metrics.
- **Spinner:** accompanies a loading label when the wait is not obvious.

## Product patterns

### Environment context

The active environment is visible before any release or feature-flag mutation.
Production receives stronger textual confirmation, not a permanent red theme.
Changing environments updates the visible data context before actions become
available.

### Release and update selection

A release view puts identity, runtime compatibility, environment, selected
state, and publication time before secondary metadata. Technical identifiers
use Commit Mono and remain copyable. A state change receives a plain-language
confirmation that names the affected environment and compatible runtime.

An update is eligible only within the documented JavaScript and native-build
boundary. The UI does not suggest that Otafox can distribute a new native
module, entitlement, permission declaration, or other binary change.

### Rollback

Use `roll back compatible releases` in concise public copy. Product and docs
must explain the mechanism: runtime selection changes before a compatible app
downloads the update. A compatible app applies the selected update according
to its supported lifecycle, commonly after a cold start. Do not say that an
already installed update is instantly revoked from every running device.

### Feature flags

Show flag key, readable name, environment, current value, and saving feedback.
Optimistic presentation must not report success before the server confirms it.
A destructive or unusually broad change may require confirmation that repeats
the environment and target value. Audit data is shown only when a real source
exists.

### Metrics and operational status

Every number has a unit, time window, and source. Empty or unavailable data is
shown honestly. Do not replace missing telemetry with plausible sample values
on a production surface. Demo data is labeled `Demo` at the dataset level.

Status such as healthy, adopted, or crash-free requires the exact supporting
signal. A successful request proves only that request. It does not prove fleet
health or release quality.

## Platform mapping

The mapping is complete at the foundation level; component recipes remain
consumer-owned.

| Foundation | Next.js app and marketing | Fumadocs documentation | Expo/React Native |
| --- | --- | --- | --- |
| Light/Dark colors | Component-owned Tailwind utilities; official dark variant | Local Tailwind utilities around Fumadocs roles | Typed `LIGHT_THEME`/`DARK_THEME` color objects |
| Structural/control borders | `border.*` for layout, `control.border.*` for form and switch boundaries | Same role split in navigation, search, and callouts | `StyleSheet` border roles by control state |
| Typography | Geist headings, Inter copy/controls, Commit Mono technical values | Same families with documentation reading measure | Bundled or approved platform fallbacks with identical hierarchy |
| Tracking | Convert em values to local Tailwind tracking recipes | Apply by content role, not globally | Convert em intent to native numeric letter spacing at the role size |
| Space and density | Four-unit scale; 48/40/36 row recipes | Comfortable reading rhythm; dense only for technical tables | Numeric spacing; 44/48 touch target overrides visual row density |
| Radius and border width | Local Tailwind radius and one/two-unit border recipes | Local component recipes | Numeric `borderRadius` and `borderWidth` values |
| Depth | Border first; elevation 1/3/8 only for real layers | Fumadocs surfaces with restrained shadow | Native elevation/shadow adapter by platform |
| Motion | 120/180/280 ms; serialize portable bezier arrays to CSS | Same durations; no decorative docs motion | Animated API serialization only where needed |
| Reduced motion | `prefers-reduced-motion` resolves duration to 0 | Same media preference | Accessibility preference resolves duration to 0 |
| Layers | 0/100/300/400/500/600 local z-index mapping | Header, search, overlay, and dialog mapping | Navigation/modal/portal order, not CSS z-index strings |
| Widths and grid | 640/960/1200; 4/8/12 columns | 640 reading measure inside the documentation shell | Window-aware one/two-pane composition, not fixed web columns |
| Breakpoints | 640/768/1024/1280/1536 plus container response | Same page thresholds where Fumadocs permits | Window-size decisions; reference thresholds, not device detection |
| Icons | Lucide at 16/20/24/32 | Matching line-icon language | Native-compatible icon set at the same optical sizes |
| Focus and touch | Two-unit ring/offset; 44 minimum target | Same keyboard focus and target minimum | Accessibility focus semantics; 44 minimum, 48 preferred |

### Next.js app and marketing site

Use component-owned Tailwind recipes and Base UI semantics. Keep the global
stylesheet limited to Tailwind setup and the official dark variant. Do not add
a global TypeScript class-name registry, CSS Modules, CSS-in-JS, or semantic CSS
variables merely to mirror the JSON structure. The public `/design` route
renders production components, not visually similar specimens.

Pointer states enrich the web experience, but keyboard focus and touch-sized
targets remain first-class. Server Components stay the default; interaction
boundaries are small Client Components.

### Expo and React Native mobile app

Use a typed theme adapter and `StyleSheet` recipes. Light and Dark expose the
same role keys. Minimum targets are 44; prefer 48 for native controls. Safe-area
insets, platform navigation, text scaling, and screen-reader labels are part of
the component contract. Web hover concepts do not leak into native state APIs.

### Documentation

Use Fumadocs primitives and local Tailwind adaptation. Public content remains
English until the documentation localization policy changes. Code, callouts,
navigation, and search share the same semantic hierarchy, but documentation
keeps the density and reading measure appropriate for technical learning.

### Packages and static surfaces

Package READMEs and generated images copy a revisioned master or derivative and
record the source. They do not rasterize a legacy opaque PNG and promote it as
the new identity. GitHub and social surfaces may use platform containers while
preserving the mark clear space.

## Accessibility

WCAG 2.2 AA is the baseline, not a final audit badge.

- Normal text targets a 4.5:1 contrast ratio; large text targets 3:1.
- Meaningful UI graphics and focus indicators target 3:1 against adjacent
  colors.
- Keyboard order follows the visual and reading order.
- Focus is never removed without an equally visible replacement.
- Targets are at least 44 × 44; adjacent compact targets have sufficient space.
- Status never depends on color alone.
- Labels, errors, descriptions, and groups have programmatic relationships.
- Text can scale without clipping, overlap, or loss of action.
- Reduced-motion preference removes nonessential animation and uses zero token
  duration.
- Loading and saved feedback is announced without stealing focus.
- Touch, keyboard, pointer, and screen-reader paths lead to the same result.
- Decorative marks are hidden; meaningful standalone brand links are named.

Light and Dark are tested independently. A passing value pair in one mode does
not authorize reuse in the other. Consumers document exceptions and the reason
rather than silently reducing contrast.

## Copy, terminology, and claims

### Evidence ladder

Claims become stronger only when evidence does:

1. **Mechanism:** verified in code, tests, or current technical documentation.
2. **Availability:** verified in the environment where the user can access it.
3. **Operational result:** measured by an identified telemetry source and time
   window.
4. **Customer outcome:** supported by attributable research or a published case
   study.

Public copy can describe a mechanism that exists. It cannot jump from mechanism
to outcome. A local demo does not prove hosted public availability.

Approved mechanism language includes:

- `Ship signed JavaScript updates.`
- `Control feature flags by environment.`
- `Roll back compatible releases.`
- `Built for changes that do not require a new native build.`

These phrases still require the relevant feature to exist in the consumer's
release. If capability evidence changes, copy changes with it.

Do not publish these claims without named evidence:

- instant rollback or instant revocation;
- crash-free, healthy, verified health, or safe release;
- full adoption or active-device coverage;
- median install time or any unlabeled performance statistic;
- production-ready, generally available, or public hosted service;
- a customer count, success rate, testimonial, or savings figure;
- an interactive API reference when only static documentation exists.

Use `OTA release` for the signed, immutable JavaScript delivery artifact. Use
`update` for the user-visible change that a compatible application receives
and applies. Use `runtime` for compatibility identity, `environment` for
operational scope, and `native build` for a store-distributed binary. Do not
swap these terms for variety when precision matters.

## Localization

English is the canonical source for brand and public product terminology.
Supporting interface copy may be transcreated into Brazilian Portuguese and
Spanish, but the product fact and action remain the same.

- Keep `Otafox` and `Your app, always up to date.` unchanged.
- Use typed message keys with identical structure in every locale.
- Do not translate by matching rendered English strings at runtime.
- Preserve runtime IDs, package names, code, hashes, and flag keys.
- Localize dates, times, number formatting, and plural rules.
- Test expansion and wrapping. A translation is not forced into the English
  width.
- Review consequential release and production copy with a fluent human before
  public launch.

When a source string is inaccurate, fix the canonical fact first and then
update every locale. Translation never legitimizes an unsupported claim.

## Governance

### Change classes

- **Major:** changes brand geometry, removes a semantic role, changes a role's
  meaning, or requires coordinated consumer migration.
- **Minor:** adds a backward-compatible role, component pattern, derivative, or
  documented platform mapping.
- **Patch:** corrects description, evidence, metadata, or a defect without
  changing the intended role.

Brand files receive a `sourceRevision`, SHA-256 checksum, dimensions, view box,
background classification, and intended consumers in the manifest. A generated
platform asset is `canonical: false` and points back to the source revision.

A system change follows this sequence:

1. State the user or operational problem.
2. Update this authority and the relevant machine-readable files.
3. Add or update contract tests before changing consumer behavior.
4. Verify Light and Dark structural parity.
5. Migrate consumer adapters without unrelated refactors.
6. Review accessibility, truth, localization, and representative layouts.
7. Record evidence and remaining drift.

Consumer-specific exceptions include owner, reason, affected role, and removal
condition. A one-off visual preference is not sufficient reason. Deprecated
tokens stay documented for one migration window and are not used by new code.

## Release evidence

A design release is complete only when its evidence matches its scope.

Record:

- design-system version and brand source revision;
- changed files and affected consumers;
- exact automated commands and exit results;
- Light and Dark screenshots at representative widths;
- keyboard, screen-reader, touch-target, and reduced-motion review;
- mark inspection at 16, 24, 32, and 64 px;
- checksums for new brand files;
- copy claim source or explicit qualification;
- locale parity result;
- remaining legacy consumers and named follow-up owner.

Foundation version 2.0.0 evidence:

- Approved face and full-body inputs retained byte-for-byte with recorded checksums.
- Face, body, tonal pairs, lockups, favicons, and launcher sources preserve the
  approved path data without traced or simplified geometry.
- Canonical, preview, platform-derived, and legacy asset classification,
  provenance, checksums, XML structure, security, and geometry verified by
  `scripts/verify-design-assets.test.mjs`.
- Light/Dark path parity, exact critical colors, 3:1 control borders, local
  schema metadata, grid, breakpoints, tracking, dense rhythm, touch minimum,
  reduced motion, and portable easing format verified by
  `scripts/verify-design-tokens.test.mjs`.
- Six legacy PNGs preserved unchanged for controlled migration.
- App, docs, and mobile adoption remain consumer work until their own gates and
  representative visual reviews pass.

No release note may replace a failing gate with “looks correct.” Likewise, a
green automated gate does not replace judgment about hierarchy, clarity, or
whether a claim is true.
