#!/usr/bin/env python3
"""Reconstruct a visible grayscale image from the C median-filter output."""

from __future__ import annotations

import argparse
from pathlib import Path
from PIL import Image
import numpy as np


def read_info(path: Path) -> tuple[int, int]:
    values: dict[str, int] = {}
    for line in path.read_text(encoding="ascii").splitlines():
        if "=" in line:
            key, value = line.split("=", 1)
            values[key.strip().upper()] = int(value.strip())

    if "WIDTH" not in values or "HEIGHT" not in values:
        raise ValueError(f"Missing WIDTH or HEIGHT in {path}")
    return values["WIDTH"], values["HEIGHT"]


def read_hex_pixels(path: Path, expected_count: int) -> np.ndarray:
    pixels: list[int] = []
    with path.open("r", encoding="ascii") as f:
        for line_no, line in enumerate(f, start=1):
            text = line.strip()
            if not text:
                continue
            value = int(text, 16)
            if not 0 <= value <= 255:
                raise ValueError(f"Pixel outside 8-bit range at line {line_no}: {text}")
            pixels.append(value)

    if len(pixels) != expected_count:
        raise ValueError(
            f"Expected {expected_count} pixels but found {len(pixels)} in {path}"
        )
    return np.asarray(pixels, dtype=np.uint8)


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Convert denoised C output hex pixels back to a visible image."
    )
    parser.add_argument(
        "--info", default="data/image_info.txt",
        help="Metadata file (default: data/image_info.txt)"
    )
    parser.add_argument(
        "--input", default="data/soc_denoised_pixels.hex",
        help="C output hex file (default: data/soc_denoised_pixels.hex)"
    )
    parser.add_argument(
        "--output", default="data/denoised_soc.png",
        help="Visible output image (default: data/denoised_soc.png)"
    )
    args = parser.parse_args()

    info_path = Path(args.info)
    input_path = Path(args.input)
    output_path = Path(args.output)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    width, height = read_info(info_path)
    flat = read_hex_pixels(input_path, width * height)
    image_array = flat.reshape((height, width))
    Image.fromarray(image_array, mode="L").save(output_path)

    print(f"Denoised image reconstructed: {output_path}")
    print(f"Resolution: {width} x {height}")


if __name__ == "__main__":
    main()
