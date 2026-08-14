# Asset Manifest

> Record the technical identity and intended role of every maintained Otafox raster asset.

All six images are 1254 × 1254 pixel, 8-bit RGB, non-interlaced PNG files with
an opaque background. The `-w` suffix identifies the white-background variant;
the unsuffixed file uses a black background.

| Path | Visual role | Intended surface | SHA-256 |
| --- | --- | --- | --- |
| `logo/logo-w.png` | Full fox and Otafox wordmark, black on white | Light surfaces and documents | `e14ca8d2c0275aff81364462b6d67ecbdb4cfd5086b13366ac1c53d70365126d` |
| `logo/logo.png` | Full fox and Otafox wordmark, white on black | Dark surfaces | `9b9cd6d61b40873f04f4b16fa241fe8f5c26efd8293acd7e90b056c9442b7ab3` |
| `full-body-favicon/body-fav-w.png` | Full fox mark, black on white | Larger square light-surface avatar or artwork | `8b6416732e7a56d8ae0ad1f8ff4fb65b937753206937ce682cfd1e6dabc9c9da` |
| `full-body-favicon/body-fav.png` | Full fox mark, white on black | Larger square dark-surface avatar or artwork | `0af525a48d7eb81e0c1020a8564961e147eab495bc070ca3096e2d70f52dc27e` |
| `small-favicon/face-fav-w.png` | Fox face mark, black on white | Small light-surface icon and favicon source | `deb0802942c5f9b83257ea6119851f58c3b45de0cdbc37af29d784b2b6d2f906` |
| `small-favicon/face-fav.png` | Fox face mark, white on black | Small dark-surface icon and favicon source | `3677c19db597261e2144f318f046293fbb81f548adb9e778adf5d5cb34f0bb1a` |

## Classification

The files above are canonical only within the currently available raster set.
Their original design provenance is not recorded, and none should be described
as a legal master or vector master. Optimized WebP, AVIF, ICO, or resized PNG
files generated in consumer repositories are derivatives.

Recalculate checksums with:

```bash
shasum -a 256 logo/*.png full-body-favicon/*.png small-favicon/*.png
```

