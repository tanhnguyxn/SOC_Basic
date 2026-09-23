#!/usr/bin/env python3
"""Convert an input image to 8-bit grayscale and export row-major hex pixels.

Output pixel format:
- image_info.txt: WIDTH=<n>, HEIGHT=<n>
- grayscale_pixels.hex: one 8-bit pixel per line, hexadecimal 00..FF

This stream-like format is intentionally simple so it can later be reused by
C, Verilog/SystemVerilog testbenches, BRAM initialization scripts, etc.
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


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Convert an image to 8-bit grayscale and export pixels."
    )
    parser.add_argument("input_image", help="Path to source image (PNG/JPG/BMP/...)")
    parser.add_argument(
        "--out-dir", default="data", help="Output directory (default: data)"
    )
    parser.add_argument(
        "--width", type=int, default=None,
        help="Optional resize width. If omitted, original width is kept."
    )
    parser.add_argument(
        "--height", type=int, default=None,
        help="Optional resize height. If omitted, original height is kept."
    )
    args = parser.parse_args()

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    image = Image.open(args.input_image).convert("L")

    if args.width is not None or args.height is not None:
        width = args.width if args.width is not None else image.width
        height = args.height if args.height is not None else image.height
        if width <= 0 or height <= 0:
            raise ValueError("Width and height must be positive integers.")
        image = image.resize((width, height), Image.Resampling.BILINEAR)

    grayscale_path = out_dir / "grayscale.png"
    info_path = out_dir / "image_info.txt"
    hex_path = out_dir / "grayscale_pixels.hex"

    image.save(grayscale_path)
    pixels = np.asarray(image, dtype=np.uint8)
    write_info(info_path, image.width, image.height)
    write_hex_pixels(hex_path, pixels)

    print(f"Grayscale image : {grayscale_path}")
    print(f"Image metadata  : {info_path}")
    print(f"Pixel hex stream: {hex_path}")
    print(f"Resolution      : {image.width} x {image.height}")
    print(f"Pixel count     : {image.width * image.height}")


if __name__ == "__main__":
    main()
