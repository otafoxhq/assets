# Brand Usage Guide

> Define consistent, accessible use of the verified Otafox raster marks.

## Choosing an asset

- Use the full `logo` when the brand must be identified without adjacent text.
- Use the full-body fox for larger square artwork where the body remains legible.
- Use the face mark for favicons, compact navigation, avatars, and controls.
- Use the `-w` file on light surfaces and the unsuffixed file on dark surfaces.
- Do not remove the opaque background from these files by thresholding or
  automated color removal. A transparent or vector variant requires a verified
  source asset.

## Sizing and clear space

Preserve the original 1:1 canvas and aspect ratio. Do not crop the wordmark or
fox within the source canvas. Because no approved vector geometry or brand grid
exists, this guide does not claim a legal clear-space formula.

For product use, keep empty surrounding space at least equal to one quarter of
the rendered fox-face width. Treat these as conservative minimum rendered
sizes for the current raster files:

- face mark: 24 × 24 CSS pixels;
- full-body mark: 64 × 64 CSS pixels;
- full logo canvas: 160 × 160 CSS pixels.

If the mark is not recognizable at the required size, move to the simpler face
mark rather than sharpening, redrawing, or cropping the full-body artwork.

## Forbidden transformations

Do not stretch, skew, rotate, outline, recolor, add gradients, add shadows,
place text over the mark, rearrange the fox and wordmark, or combine the mark
with another logo. Do not use a white-background asset on a dark tile or the
black-background asset on a light tile unless the intentional square tile is
part of the composition.

## Accessibility

- A linked logo without adjacent visible brand text uses `alt="Otafox"`.
- A mark beside visible “Otafox” text is decorative and uses `alt=""`.
- Decorative background artwork uses an empty alternative and is excluded
  from the accessibility tree.
- Never use only the light/dark variant to communicate application state.

## Downstream ownership

The app, website, documentation portal, GitHub profile, and package READMEs may
copy optimized derivatives because they are independently built repositories.
Each consumer owns its output size and format, keeps the correct surface pair,
and records this repository path as the source. A copied derivative must not be
edited and promoted as a new master.

## Open brand decisions

The following require a future design or legal decision and are not inferred
from the PNG files:

- original vector and editable-source provenance;
- trademark ownership and legal master designation;
- a measured clear-space grid and approved small-size optical corrections;
- official color values beyond the current monochrome raster appearance;
- social, print, animation, and co-branding rules.

