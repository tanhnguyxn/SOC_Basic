#!/usr/bin/env python3
"""Add salt-and-pepper noise to an 8-bit grayscale image.

The noisy image is saved for visual inspection, while noisy_pixels.hex is the
row-major 8-bit input stream consumed by median_filter.c.
"""

from __future__ import annotations

import argparse
from pathlib import Path
from PIL import Image
import numpy as np


def write_info(path: Path, width: int, height: int) -> None:
    path.write_text(f"WIDTH={width}\nHEIGHT={height}\n", encoding="ascii")


def write_hex_pixels(path: Path, pixels: np.ndarray) -> None:
    flat = pixels.astype(np.uint8).reshape(-1)
    with path.open("w", encoding="ascii", newline="\n") as f:
        for value in flat:
            f.write(f"{int(value):02X}\n")


def add_salt_pepper_noise(
    image: np.ndarray,
    noise_probability: float,
    salt_ratio: float,
    seed: int,
) -> np.ndarray:
    if not 0.0 <= noise_probability <= 1.0:
        raise ValueError("noise_probability must be in [0, 1].")
    if not 0.0 <= salt_ratio <= 1.0:
        raise ValueError("salt_ratio must be in [0, 1].")

    rng = np.random.default_rng(seed)
    noisy = image.copy()

    # One random value determines whether a pixel is noisy.
    noise_mask = rng.random(image.shape) < noise_probability
    # A second random value chooses salt (255) or pepper (0).
    salt_mask = rng.random(image.shape) < salt_ratio

    noisy[noise_mask & salt_mask] = 255
    noisy[noise_mask & ~salt_mask] = 0
    return noisy


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Add salt-and-pepper noise and export 8-bit hex pixels."
    )
    parser.add_argument(
        "input_image",
        nargs="?",
        default="data/grayscale.png",
        help="8-bit grayscale source image (default: data/grayscale.png)",
    )
    parser.add_argument(
        "--out-dir", default="data", help="Output directory (default: data)"
    )
    parser.add_argument(
        "--prob", type=float, default=0.05,
        help="Probability that a pixel is replaced by salt/pepper (default: 0.05)"
    )
    parser.add_argument(
        "--salt-ratio", type=float, default=0.5,
        help="Among noisy pixels, probability of salt=255 (default: 0.5)"
    )
    parser.add_argument(
        "--seed", type=int, default=1234,
        help="Random seed for reproducible test vectors (default: 1234)"
    )
    args = parser.parse_args()

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    image = Image.open(args.input_image).convert("L")
    pixels = np.asarray(image, dtype=np.uint8)
    noisy = add_salt_pepper_noise(pixels, args.prob, args.salt_ratio, args.seed)

    noisy_image_path = out_dir / "noisy.png"
    noisy_hex_path = out_dir / "noisy_pixels.hex"
    info_path = out_dir / "image_info.txt"

    Image.fromarray(noisy, mode="L").save(noisy_image_path)
    write_info(info_path, image.width, image.height)
    write_hex_pixels(noisy_hex_path, noisy)

    changed = int(np.count_nonzero(noisy != pixels))
    print(f"Noisy image     : {noisy_image_path}")
    print(f"Image metadata  : {info_path}")
    print(f"C input stream  : {noisy_hex_path}")
    print(f"Noise probability: {args.prob:.4f}")
    print(f"Changed pixels  : {changed} / {image.width * image.height}")


if __name__ == "__main__":
    main()
