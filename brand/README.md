# Otafox Brand System

> Use the authored Otafox masters consistently across product, documentation,
> company, and editorial surfaces.

## Canonical assets

| Asset | Role | Use |
| --- | --- | --- |
| `mark/otafox-mark.svg` | Compact mark | Light or pale surfaces, controls, compact navigation, editorial signatures |
| `mark/otafox-mark-inverse.svg` | Compact inverse mark | Dark surfaces with sufficient contrast |
| `editorial/otafox-body.svg` | Full-body editorial mark | Large light-surface brand moments before a closing action or footer |
| `editorial/otafox-body-inverse.svg` | Full-body inverse editorial mark | Large dark-surface brand moments before a closing action or footer |
| `lockup/otafox-lockup.svg` | Horizontal lockup | Light or pale surfaces where the full brand must be identified |
| `lockup/otafox-lockup-inverse.svg` | Horizontal inverse lockup | Dark surfaces where the full brand must be identified |

Every master is a self-contained, transparent, one-color SVG. The negative
space in the fox is intentional geometry, not a cutout from a background tile.
The lockup repeats the exact compact mark paths inside a `228 × 64` view box
and adds an authored vector wordmark. Visible fox ink ends at x=60; wordmark
ink begins at x=77, creating a 17-unit optical gap. Both elements align around
the y=32 centerline. The lockup proportion is 228:64, or 57:16 (3.5625:1), with
four units of protected right-side space. It has no font or network dependency.

## Brand roles

- **Mark:** the canonical fox geometry. Use it when space is constrained or
  when visible `Otafox` text already identifies the brand.
- **Wordmark:** the authored Otafox letterforms inside the canonical lockup.
  Do not extract, retype, or recreate them as a substitute logo.
- **Lockup:** the primary standalone brand signature. Prefer it in headers,
  partner listings, press material, and documents with enough horizontal room.
- **App icon:** use the platform-specific sources below. Backgrounds and masks
  are delivery concerns and never become part of the canonical mark.
- **Favicon:** use the compact face derivative below. Do not use the
  lockup or legacy full-body raster at favicon sizes.
- **Editorial body:** use the full fox only as a large, quiet closing signature,
  such as the brand moment immediately before the marketing footer. Never use
  it in navigation, controls, favicons, app icons, or dense product screens.

## Published platform sources

- `app-icon/source.svg` is a rounded preview for the design catalog and release
  review. It is not an iOS or Android submission source.
- `app-icon/ios-source.svg` is an opaque, full-bleed 1024 × 1024 square with no
  authored corner radius. The inverse mark occupies the central 576 × 576 safe
  region; iOS applies the platform mask.
- `app-icon/android-background.svg` is the full-bleed graphite 108 × 108
  adaptive-icon background layer.
- `app-icon/android-foreground.svg` is a transparent 108 × 108 layer with the
  inverse mark centered inside Android's 66 × 66 safe region.
- `app-icon/android-monochrome.svg` uses the same safe geometry as a one-color
  layer. Android supplies the themed icon color.
- `favicon/source.svg` preserves the approved compact face paths on their
  original `0 0 1254 1254` canvas. Raster consumers may add canvas padding,
  but they must not simplify or edit the geometry.

Every preview or derivative records its source asset, source checksum, revision,
safe zone, consumers, and own checksum in `manifest.json`. Generated PNG, ICO,
and adaptive-icon outputs remain consumer-owned derivatives.

## Clear space and minimum size

The clear-space unit is one quarter of the rendered mark width. Keep at least
one unit free on every side of a mark or lockup. The empty SVG view-box area is
artwork balance, not a replacement for external clear space.

- Compact mark minimum: `16 × 16 px`.
- Browser icons use `favicon/source.svg` exclusively at 16 and 32 px.
- Horizontal lockup minimum: `96 px` wide.
- When the lockup is too small, use the mark beside live visible `Otafox` text;
  never remove detail from or alter the master.

## Surface pairing

Use the dark `#09090B` asset on the Light canvas and other pale, low-noise
surfaces. Use the inverse `#FAFAFA` asset on the Dark canvas and other dark,
low-noise surfaces. Verify contrast against the actual container instead of
selecting a file from a filename alone.

Other safe platform containers may provide:

- the required square or adaptive app-icon background;
- a circular avatar crop around, not through, the mark clear space;
- a browser favicon canvas;
- a social-card field with sufficient contrast and clear space.

The container must not be embedded into, fused with, or promoted as the master
logo. Do not place either master directly on photography or noisy gradients.

## Accessibility

- A standalone linked lockup uses an accessible name of `Otafox`.
- A standalone mark uses `Otafox` only when it is the sole brand identifier.
- A mark beside visible `Otafox` text is decorative and is hidden from the
  accessibility tree.
- Full-body editorial ornaments are always decorative.
- Do not repeat the same brand name through both visible text and SVG metadata
  in a single accessible control.

## Prohibited transformations

Do not stretch, skew, rotate, crop, outline, recolor outside approved pairs,
add gradients, add shadows, add glow, add strokes, rearrange the mark and
wordmark, or place content over the artwork. Do not threshold-remove a raster
background, auto-trace legacy PNGs, or describe any traced derivative as an
authored or legal master.

## Legacy raster boundary

The six root-level PNGs remain preserved for compatibility and historical
reference. They have opaque black or white backgrounds and are not masters for
new work. New derivatives originate from the six SVG masters in this directory.
The repository does not make a trademark-registration or legal-ownership claim.

See [`../DESIGN.md`](../DESIGN.md) for the full system authority and
[`manifest.json`](manifest.json) for machine-readable classification.
