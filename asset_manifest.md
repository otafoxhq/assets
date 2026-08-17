# Asset Manifest

> Record the technical identity and intended role of every maintained Otafox
> master and preserved legacy asset.

## Canonical vector masters

All six SVG files are transparent, self-contained, and one-color. The face and
body marks use a `1254 × 1254` coordinate system. The lockup uses a `228 × 64` view box,
repeats the exact mark geometry, and adds deterministic vector letterforms
without a font dependency.

| Path | Role | Fill | SHA-256 |
| --- | --- | --- | --- |
| `brand/mark/otafox-mark.svg` | Compact face for light surfaces | `#09090B` | `859280daed0ca2b4fc19fc054efc458c1ace99d24c861163a1580b802216ebee` |
| `brand/mark/otafox-mark-inverse.svg` | Compact face for dark surfaces | `#FAFAFA` | `55c40a8111ec43016ccefcd161fdf688a0e474b7dc8d65744da756e045642e3c` |
| `brand/editorial/otafox-body.svg` | Full-body closing signature for light surfaces | `#09090B` | `73fe939bde8a82a60dba11058ea15860adaf5c5b019c304c8c39b06d9df27537` |
| `brand/editorial/otafox-body-inverse.svg` | Full-body closing signature for dark surfaces | `#FAFAFA` | `397d70fbd41e4d8d06cc1078e6850b204adfa6b1f30e1db8d5f65fbfa1836172` |
| `brand/lockup/otafox-lockup.svg` | Horizontal signature for light surfaces | `#09090B` | `e8f6a81e31e1115a35e704761c2b697879d38dc0c7439b414c444e891cca8f59` |
| `brand/lockup/otafox-lockup-inverse.svg` | Horizontal signature for dark surfaces | `#FAFAFA` | `13daf304839f28cf64a7010cb6527dbe4615c98a6710cb88beae753f1369e6d8` |

The classification is also published in
[`brand/manifest.json`](brand/manifest.json). These files are product design
masters. This classification is not a trademark-registration or legal-master
claim.

## Platform generation sources

These sources are reproducible preview or delivery derivatives of the canonical
geometry. App-icon delivery uses color revision `brand-v2.1.0`; the favicon
continues to use the monochrome `brand-v2.0.0` geometry revision. They are not additional
canonical marks.

| Path | Classification | View box | Platform rule | SHA-256 |
| --- | --- | --- | --- | --- |
| `brand/app-icon/source.svg` | Preview | `0 0 1024 1024` | Rounded primary-green catalog preview; never submit to a store | `ac308b27d0404169a16e3d38b618dc8aec7ce9686c4983ec2e2f115f666b2976` |
| `brand/app-icon/ios-source.svg` | Derivative | `0 0 1024 1024` | Full-bleed primary-green square; iOS owns the corner mask | `68a595cbc505ee2be089852d4e5a3183c7c3820417004d401c60fd878d9d8fc7` |
| `brand/app-icon/android-background.svg` | Derivative | `0 0 108 108` | Full-bleed primary-green adaptive background | `c26ba81cb00c746b4b7ecfd0149ec88cab36ebfd47665d27d6a3a9ef9dd0e05c` |
| `brand/app-icon/android-foreground.svg` | Derivative | `0 0 108 108` | Transparent dark face in centered 66 × 66 safe region | `9f1bf8a4520f2e2e3c6fa3f5a60b4f7a35bf3101b4bcfc13a933f728c668a8d9` |
| `brand/app-icon/android-monochrome.svg` | Derivative | `0 0 108 108` | One-color themed-icon layer in the same safe region | `df2e6201681c39a52a34b537d021033cb7295c4d3457729644918b274d63c9f3` |
| `brand/favicon/source.svg` | Derivative | `0 0 1254 1254` | Exact approved face paths for browser icon generation | `d8ca06a6d3f53a70c095674fa8b2388fb540f00dbdd8c7839f3372fbc7e5686a` |

## Preserved legacy raster sources

All six images are 1254 × 1254 pixel, 8-bit RGB, non-interlaced PNG files with
an opaque background. The `-w` suffix identifies the white-background variant;
the unsuffixed file uses a black background.

| Path | Visual role | Intended surface | SHA-256 |
| --- | --- | --- | --- |
| `logo/logo-w.png` | Full fox and Otafox wordmark, black on white | Light surfaces and documents | `e14ca8d2c0275aff81364462b6d67ecbdb4cfd5086b13366ac1c53d70365126d` |
| `logo/logo.png` | Full fox and Otafox wordmark, white on black | Dark surfaces | `9b9cd6d61b40873f04f4b16fa241fe8f5c26efd8293acd7e90b056c9442b7ab3` |
| `full-body-favicon/body-fav-w.png` | Full fox mark, black on white | Larger square light-surface avatar or artwork | `8b6416732e7a56d8ae0ad1f8ff4fb65b937753206937ce682cfd1e6dabc9c9da` |
| `full-body-favicon/body-fav.png` | Full fox mark, white on black | Larger square dark-surface avatar or artwork | `0af525a48d7eb81e0c1020a8564961e147eab495bc070ca3096e2d70f52dc27e` |
| `small-favicon/face-fav-w.png` | Fox face mark, black on white | Preserved small light-surface compatibility reference; not for new browser icons | `deb0802942c5f9b83257ea6119851f58c3b45de0cdbc37af29d784b2b6d2f906` |
| `small-favicon/face-fav.png` | Fox face mark, white on black | Preserved small dark-surface compatibility reference; not for new browser icons | `3677c19db597261e2144f318f046293fbb81f548adb9e778adf5d5cb34f0bb1a` |

## Legacy classification

The PNGs are compatibility assets, not new-work masters. `brand/manifest.json`
records their PNG format, 1254 × 1254 dimensions, legacy role, background,
checksum, source revision, and migration consumers. Their original design
provenance is not recorded, and none should be described as a legal master or
vector master. They remain unchanged so existing consumers can migrate
deliberately. Optimized WebP, AVIF, ICO, or resized PNG files generated in
consumer repositories are legacy derivatives.

Generate every new 16 or 32 px browser icon exclusively from
`brand/favicon/source.svg`.

Recalculate checksums with:

```bash
shasum -a 256 logo/*.png full-body-favicon/*.png small-favicon/*.png
```

Verify the canonical contracts with:

```bash
node --test scripts/verify-design-assets.test.mjs scripts/verify-design-tokens.test.mjs
```
