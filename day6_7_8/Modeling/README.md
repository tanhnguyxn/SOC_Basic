# Median Filter - Python + C reference model

This project is a simple high-level model that is useful before implementing a
hardware accelerator for a 3x3 grayscale Median Filter.

## Pipeline

1. `01_prepare_grayscale.py`
   - Reads PNG/JPG/BMP/etc.
   - Converts to 8-bit grayscale (`0..255`).
   - Produces `data/grayscale.png`.
   - Also exports `data/grayscale_pixels.hex`.

2. `02_add_salt_pepper_export.py`
   - Adds reproducible salt-and-pepper noise.
   - Produces `data/noisy.png`.
   - Produces `data/noisy_pixels.hex`, which is the C model input.

3. `median_filter.c`
   - Implements a 3x3 Median Filter.
   - Reads pixels in row-major order.
   - Sorts the 9 pixels in every 3x3 window and selects element 4.
   - Copies the outer 1-pixel border unchanged.
   - Produces `data/denoised_pixels.hex`.

4. `04_reconstruct_denoised.py`
   - Reads the C output.
   - Reconstructs `data/denoised.png` for visual inspection.

## Pixel file format

`image_info.txt`:

```text
WIDTH=640
HEIGHT=480
```

Pixel files use one unsigned 8-bit hexadecimal pixel per line:

```text
00
7F
A3
FF
...
```

Pixels are stored **row-major**:

```text
pixel[0,0], pixel[0,1], ..., pixel[0,W-1],
pixel[1,0], pixel[1,1], ..., pixel[H-1,W-1]
```

This format is deliberately hardware-friendly. The `.hex` file can later be
used as a test vector for RTL/SystemVerilog or converted into a memory-init file.

## Install Python dependencies

```bash
python3 -m pip install -r requirements.txt
```

## Build C model

```bash
make
```

Equivalent command:

```bash
gcc -O2 -std=c11 -Wall -Wextra -Wpedantic median_filter.c -o median_filter
```

## Run

Assume the original image is `input.png` in this directory.

```bash
python3 01_prepare_grayscale.py input.png
python3 02_add_salt_pepper_export.py
./median_filter
python3 04_reconstruct_denoised.py
```

Generated files:

```text
data/
  grayscale.png
  grayscale_pixels.hex
  image_info.txt
  noisy.png
  noisy_pixels.hex
  denoised_pixels.hex
  denoised.png
```

## Useful parameters

Resize during grayscale conversion:

```bash
python3 01_prepare_grayscale.py input.png --width 640 --height 480
```

Change salt-and-pepper noise probability:

```bash
python3 02_add_salt_pepper_export.py --prob 0.10 --seed 1234
```

A fixed random seed is helpful when validating C and RTL because every run uses
the exact same noisy input.

## Mapping to a future hardware accelerator

The software algorithm for each non-border pixel is:

```text
1. Read a 3x3 window = 9 pixels.
2. Sort the 9 unsigned 8-bit values.
3. Select sorted[4] as the median.
4. Write the median to the output stream/frame buffer.
```

A streaming hardware implementation normally replaces full-frame random access
with two line buffers plus the current input line, then constructs the 3x3
window every clock. The `median9()` software function can later be replaced by a
fixed comparator network for a deterministic pipeline latency.
