# Otafox Design Assets

> Own the canonical Otafox identity, design foundations, and preserved legacy
> raster sources used across independently built repositories.

## Documentation

- [Design-system authority](DESIGN.md)
- [Canonical brand system](brand/README.md)
- [Machine-readable brand manifest](brand/manifest.json)
- [Design tokens](tokens/README.md)
- [Brand usage guide](brand_usage_guide.md)
- [Human-readable asset manifest](asset_manifest.md)

## Current boundary

The six canonical mark/body/lockup files under `brand/` are authored,
transparent SVG masters. Six preview/derivative sources cover the rounded catalog preview,
iOS, Android background/foreground/monochrome layers, and the approved face
favicon. The JSON files under `tokens/` are the portable source for
primitives, semantic roles, and cross-platform foundations. `DESIGN.md` records
the decisions that give those files meaning.

The six square RGB PNG files in `logo/`, `full-body-favicon/`, and
`small-favicon/` remain unchanged as legacy raster references. They are not
sources for new logos and must not be stripped, traced, or overwritten.

Consumer repositories copy versioned derivatives and adapt token decisions to
their native technology. They do not import this repository at runtime.
