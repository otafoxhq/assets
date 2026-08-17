# Brand Usage Guide

> Define consistent, accessible use of the authored Otafox identity while
> preserving the boundary around legacy raster files.

## Choosing a canonical asset

- Use `brand/lockup/otafox-lockup.svg` when the brand must be identified without
  adjacent visible text on a light surface.
- Use `brand/lockup/otafox-lockup-inverse.svg` for the same role on a dark
  surface.
- Use the corresponding compact face mark for app-icon composition, compact
  navigation, avatars, and controls.
- Use `brand/editorial/otafox-body.svg` or its inverse only for a large closing
  brand moment, such as the section immediately before the marketing footer.
- A wordmark is the authored letterform geometry inside the lockup. Do not
  recreate it with a font. In product navigation, live `Otafox` text beside the
  compact mark is an accessible, responsive alternative.
- Use `brand/app-icon/ios-source.svg` for iOS generation and the three named
  Android layers for adaptive and themed icons. `brand/app-icon/source.svg` is
  a rounded preview only.
- Use `brand/favicon/source.svg` for browser outputs. It preserves the approved
  compact face paths; output padding is allowed, path editing is not.

## Sizing and clear space

Preserve every asset's view box and aspect ratio. The clear-space unit is one
quarter of the rendered mark width; keep at least one unit free on every side.

- Compact mark minimum: 16 × 16 pixels.
- Horizontal lockup minimum: 96 pixels wide.

The lockup uses a `228 × 64` view box (57:16, or 3.5625:1). Visible mark ink
ends at x=60 and wordmark ink begins at x=77, so the measured optical gap is 17
units. The composition aligns around the y=32 centerline and retains four units
of right-side optical space.

When the lockup is too small, use the mark beside live visible `Otafox` text.
Do not sharpen, simplify, redraw, or crop the master.

## Forbidden transformations

Do not stretch, skew, rotate, outline, recolor outside the approved pair, add
gradients, add shadows, place text over the mark, rearrange the fox and
wordmark, or combine the mark with another logo. Do not threshold-remove the
background of a legacy raster, auto-trace it, or present a trace as an authored
master.

## Accessibility

- A linked lockup without adjacent visible brand text has the accessible name
  `Otafox`.
- A mark beside visible `Otafox` text is decorative and is hidden from the
  accessibility tree.
- Decorative background artwork uses an empty alternative and is excluded
  from the accessibility tree.
- Never use only the light/dark variant to communicate application state.

## Downstream ownership

The app, website, documentation portal, mobile app, GitHub profile, and package
READMEs may copy versioned derivatives because they are independently built
repositories. Each consumer owns its output size and format, keeps the correct
surface pair, and records this repository path as the source. A copied
derivative must not be edited and promoted as a new master.

## Legacy raster boundary

The six PNG files under `logo/`, `full-body-favicon/`, and
`small-favicon/` are preserved for compatibility. They retain their opaque
backgrounds and earlier minimum-size guidance. New identity work begins with
the transparent masters in `brand/`; new browser icons begin exclusively with
`brand/favicon/source.svg`. See [`brand/README.md`](brand/README.md) for
platform-container and editorial guidance.
