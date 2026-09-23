#!/usr/bin/env bash
set -e

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <input_image> [noise_probability]"
    exit 1
fi

INPUT_IMAGE="$1"
NOISE_PROB="${2:-0.05}"

python3 01_prepare_grayscale.py "$INPUT_IMAGE"
python3 02_add_salt_pepper_export.py --prob "$NOISE_PROB"
make
./median_filter
python3 04_reconstruct_denoised.py

echo
echo "Done. Check data/denoised.png"
