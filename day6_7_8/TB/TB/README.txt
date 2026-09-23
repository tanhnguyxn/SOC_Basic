Median_Filter IP - C-Model-Matching 3-Bank Tiling Version
=========================================================

1. What changed from the previous in-place RTL
-----------------------------------------------
The previous 3-bank version wrote the median result back into the current
middle input bank. That created vertical row feedback: a filtered row became
an input row of the next working session. That behavior does NOT match the
provided median_filter.c reference model.

This version follows the new block diagram:

    AXI Lite Slave Interface
              |
           Arbiter
              |
      +-------+--------+
      |                |
      v                v
 FSM & CTRL      Input Bank Memories
                       |
                       | DIRECT
                       v
                    Datapath
                       |
                       | DIRECT
                       v
                 Output Memory
                       |
                       v
                    Arbiter

The three Input Bank Memories contain ORIGINAL noisy image rows only.
Datapath never writes a median result back into an input bank.

2. Memory organization
----------------------
Input Bank Memories:

    Bank1 = 4096 x 8 bit
    Bank2 = 4096 x 8 bit
    Bank3 = 4096 x 8 bit

Output Memory:

    Output = 4096 x 8 bit

MEM_ADDR_BITS=12, therefore every row buffer has address 0..4095.
Supported WIDTH is 1..4096.
HEIGHT is streamed/tiled and is not limited by BRAM depth.

All memories use the Xilinx/AMD inference style through
Median_Filter_BRAM_Bank.v:

    (* ram_style = "block" *) reg [7:0] mem [0:4095];

The memory arrays are intentionally NOT reset or cleared in RTL loops.
After Vivado synthesis, check RAMB18/RAMB36 utilization to confirm BRAM mapping.

3. Exact C-model behavior
-------------------------
The supplied median_filter.c does this:

    output[y][x] = median(input[y-1:y+1][x-1:x+1])

where every sample comes from the ORIGINAL noisy input image. Input and output
are separate arrays. The outer 1-pixel border is copied unchanged.

This RTL reproduces the same behavior while storing only three original input
rows plus one output row on chip.

For WIDTH<3 or HEIGHT<3, no complete 3x3 window exists. The RTL copies every
input row unchanged, matching the early-return behavior in median_filter.c.

4. 3-bank rotation for a normal image
-------------------------------------
Initial load:

    row0 -> Bank1
    row1 -> Bank2
    row2 -> Bank3

The Datapath first copies row0 unchanged to Output Memory.
Then Working Session 0 computes:

    Bank1(row0 original)
    Bank2(row1 original)  -> median -> Output Memory row1
    Bank3(row2 original)

IMPORTANT: Bank2 is NOT overwritten.

After output row1 is consumed, row0 is no longer needed, so only Bank1 may be
reused:

    row3 -> Bank1

Working Session 1:

    Bank2(row1 original)
    Bank3(row2 original)  -> median -> Output Memory row2
    Bank1(row3 original)

Then row1 is obsolete:

    row4 -> Bank2

Working Session 2:

    Bank3(row2 original)
    Bank1(row3 original)  -> median -> Output Memory row3
    Bank2(row4 original)

The pattern repeats. After the last median row HEIGHT-2 is produced, the
original bottom border row HEIGHT-1 is copied unchanged to Output Memory.

5. Why one Output Memory is enough
----------------------------------
The C model stores the complete output frame because software memory is cheap.
The hardware does not need to keep the whole output frame on chip.

Output Memory is a 4096-pixel BRAM row buffer:

    Datapath writes one complete output row
    -> FSM enters READ
    -> software/TB reads that row
    -> STOP command releases the output buffer
    -> next output row may overwrite it

Therefore large HEIGHT values are supported without allocating WIDTH*HEIGHT
BRAM storage.

6. Direct data paths required by the new spec
---------------------------------------------
Input BRAM read data goes directly to Median_Filter_Datapath.
It does not return through Median_Filter_Arbiter.

Median_Filter_Datapath output goes directly to Median_Filter_Output_Memory.
It does not pass through Arbiter before being stored.

Arbiter is used for host-side memory access, command decoding, and status only.

7. Testbench files
------------------
TB_Median_Filter_Core.v reads:

/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6/Modeling/data/image_info.txt
/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6/Modeling/data/noisy_pixels.hex
/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6/Modeling/data/denoised_pixels.hex

RTL output is written to:

/home/ubuntu/SoC_Can_Ban/Luan/Class_4/Day_6/Modeling/data/rtl_tiling_denoised_pixels.hex

The TB streams noisy_pixels.hex row by row. It does not allocate a hardware
WIDTH*HEIGHT frame memory. Every output pixel is compared directly against the
C golden denoised_pixels.hex. RTL output is written with uppercase hexadecimal
characters (00..FF), matching the text format produced by median_filter.c.

Expected final result:

    FAIL pixels : 0
    DONE        : 1
    RESULT      : ALL TESTS PASSED - RTL MATCHES C GOLDEN

8. Run with Icarus Verilog
--------------------------

    cd TB
    ./run_iverilog.sh

Equivalent commands:

    iverilog -g2001 -Wall -o median_filter_tb.out -f filelist.f
    vvp median_filter_tb.out

9. RTL files
------------
Median_Filter_Core.v
Median_Filter_Arbiter.v
Median_Filter_FSM_CTRL.v
Median_Filter_Datapath.v
Median_Filter_Input_Bank_Memories.v
Median_Filter_Output_Memory.v
Median_Filter_BRAM_Bank.v
Median_Filter_Median9.v
Median_Filter_Compare_Swap.v
