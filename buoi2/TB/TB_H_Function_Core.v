`timescale 1ns/1ps

module tb_H_Function_Core;

    // ================================================================
    // Parameters
    // ================================================================
    parameter W_ADDR_BITS = 4;
    parameter R_ADDR_BITS = 1;

    parameter CLK_PERIOD = 10;
	
    parameter INPUT_VECTOR_FILE =
        "C:/SOC_basic/buoi2/C_Modeling/input_vectors.txt";

    parameter GOLDEN_OUTPUT_FILE =
        "C:/SOC_basic/buoi2/C_Modeling/golden_output.txt";

    // ================================================================
    // Address map
    // ================================================================
    localparam [W_ADDR_BITS-1:0] A_BASE_ADDR     = 4'h0;
    localparam [W_ADDR_BITS-1:0] B_BASE_ADDR     = 4'h1;
    localparam [W_ADDR_BITS-1:0] C_BASE_ADDR     = 4'h2;
    localparam [W_ADDR_BITS-1:0] D_BASE_ADDR     = 4'h3;
    localparam [W_ADDR_BITS-1:0] E_BASE_ADDR     = 4'h4;
    localparam [W_ADDR_BITS-1:0] F_BASE_ADDR     = 4'h5;

    localparam [W_ADDR_BITS-1:0] LOAD_BASE_ADDR  = 4'h6;
    localparam [W_ADDR_BITS-1:0] START_BASE_ADDR = 4'h7;
    localparam [W_ADDR_BITS-1:0] STOP_BASE_ADDR  = 4'h8;

    localparam [R_ADDR_BITS-1:0] H_BASE_ADDR          = 1'b0;
    localparam [R_ADDR_BITS-1:0] READ_READY_BASE_ADDR = 1'b1;

    // ================================================================
    // DUT signals
    // ================================================================
    reg                          CLK;
    reg                          RST;

    reg                          w_addr_valid_i;
    reg  [31:0]                  w_data_i;
    reg  [W_ADDR_BITS-1:0]       w_addr_i;

    reg                          r_addr_valid_i;
    reg  [R_ADDR_BITS-1:0]       r_addr_i;
    wire [31:0]                  r_data_o;

    // ================================================================
    // File handles
    // ================================================================
    integer input_fd;
    integer golden_fd;

    // ================================================================
    // Test variables
    // ================================================================
    integer scan_input_status;
    integer scan_golden_status;

    integer testcase_count;
    integer pass_count;
    integer fail_count;

    integer timeout_count;

    reg [31:0] a_data;
    reg [31:0] b_data;
    reg [31:0] c_data;
    reg [31:0] d_data;
    reg [31:0] e_data;
    reg [31:0] f_data;

    reg [31:0] golden_h;
    reg [31:0] actual_h;
    reg [31:0] read_ready_data;

    // ================================================================
    // DUT
    // ================================================================
    H_Function_Core #(
        .W_ADDR_BITS(W_ADDR_BITS),
        .R_ADDR_BITS(R_ADDR_BITS)
    ) dut (
        .CLK            (CLK),
        .RST            (RST),

        .w_addr_valid_i (w_addr_valid_i),
        .w_data_i       (w_data_i),
        .w_addr_i       (w_addr_i),

        .r_addr_valid_i (r_addr_valid_i),
        .r_addr_i       (r_addr_i),
        .r_data_o       (r_data_o)
    );

    // ================================================================
    // Clock generation
    // ================================================================
    initial begin
        CLK = 1'b0;

        forever begin
            #(CLK_PERIOD/2);
            CLK = ~CLK;
        end
    end

    // ================================================================
    // Write task
    // ================================================================
    task write_reg;
        input [W_ADDR_BITS-1:0] addr;
        input [31:0]            data;

        begin
            @(negedge CLK);

            w_addr_valid_i = 1'b1;
            w_addr_i       = addr;
            w_data_i       = data;

            @(negedge CLK);

            w_addr_valid_i = 1'b0;
            w_addr_i       = {W_ADDR_BITS{1'b0}};
            w_data_i       = 32'b0;
        end
    endtask

    // ================================================================
    // Read task
    //
    // r_data_o is returned one clock after r_addr_valid_i is sampled.
    // ================================================================
    task read_reg;
        input  [R_ADDR_BITS-1:0] addr;
        output [31:0]            data;

        begin
            @(negedge CLK);
            r_addr_valid_i = 1'b1;
            r_addr_i       = addr;

            // ? sý?n dýõng ti?p theo, Arbiter ð?y valid_i vào register
            // và ngay l?p t?c xu?t data ra r_data_o
            @(negedge CLK);
            
            // L?y m?u data ngay t?i ðây khi r_data_o ðang h?p l?
            data = r_data_o;

            // Sau khi l?y m?u xong m?i kéo valid xu?ng 0
            r_addr_valid_i = 1'b0;
            r_addr_i       = {R_ADDR_BITS{1'b0}};
        end
    endtask

    // ================================================================
    // Wait until READ_READY = 1
    // ================================================================
    task wait_read_ready;
        begin
            read_ready_data = 32'b0;
            timeout_count   = 0;

            while ((read_ready_data[0] !== 1'b1) &&
                   (timeout_count < 100)) begin

                read_reg(
                    READ_READY_BASE_ADDR,
                    read_ready_data
                );

                timeout_count = timeout_count + 1;
            end

            if (timeout_count >= 100) begin
                $display(
                    "[ERROR] Timeout waiting for READ_READY"
                );
            end
        end
    endtask

    // ================================================================
    // Reset task
    // ================================================================
    task reset_dut;
        begin
            RST = 1'b0;

            w_addr_valid_i = 1'b0;
            w_data_i       = 32'b0;
            w_addr_i       = {W_ADDR_BITS{1'b0}};

            r_addr_valid_i = 1'b0;
            r_addr_i       = {R_ADDR_BITS{1'b0}};

            repeat (5)
                @(posedge CLK);

            @(negedge CLK);
            RST = 1'b1;

            repeat (2)
                @(posedge CLK);
        end
    endtask

    // ================================================================
    // Main test
    // ================================================================
    initial begin

        // ------------------------------------------------------------
        // Initial values
        // ------------------------------------------------------------
        RST = 1'b1;

        w_addr_valid_i = 1'b0;
        w_data_i       = 32'b0;
        w_addr_i       = {W_ADDR_BITS{1'b0}};

        r_addr_valid_i = 1'b0;
        r_addr_i       = {R_ADDR_BITS{1'b0}};

        testcase_count = 0;
        pass_count     = 0;
        fail_count     = 0;

        // ------------------------------------------------------------
        // Open input vector file
        // ------------------------------------------------------------
        input_fd = $fopen(INPUT_VECTOR_FILE, "r");

        if (input_fd == 0) begin
            $display(
                "[ERROR] Cannot open input vector file:"
            );
            $display(
                "        %s",
                INPUT_VECTOR_FILE
            );

            $finish;
        end

        // ------------------------------------------------------------
        // Open golden output file
        // ------------------------------------------------------------
        golden_fd = $fopen(GOLDEN_OUTPUT_FILE, "r");

        if (golden_fd == 0) begin
            $display(
                "[ERROR] Cannot open golden output file:"
            );
            $display(
                "        %s",
                GOLDEN_OUTPUT_FILE
            );

            $fclose(input_fd);
            $finish;
        end

        // ------------------------------------------------------------
        // Banner
        // ------------------------------------------------------------
        $display("");
        $display("====================================================");
        $display("          H_FUNCTION_CORE VERIFICATION");
        $display("====================================================");
        $display("Input file : %s", INPUT_VECTOR_FILE);
        $display("Golden file: %s", GOLDEN_OUTPUT_FILE);
        $display("====================================================");
        $display("");

        // ------------------------------------------------------------
        // Reset
        // ------------------------------------------------------------
        reset_dut;

        // ------------------------------------------------------------
        // Read testcase until EOF
        // ------------------------------------------------------------
        while (!$feof(input_fd) && !$feof(golden_fd)) begin

            // --------------------------------------------------------
            // Read:
            // a b c d e f
            //
            // Expected input file format:
            // %08X %08X %08X %08X %08X %08X
            // --------------------------------------------------------
            scan_input_status = $fscanf(
                input_fd,
                "%h %h %h %h %h %h\n",
                a_data,
                b_data,
                c_data,
                d_data,
                e_data,
                f_data
            );

            // --------------------------------------------------------
            // Read golden H
            // --------------------------------------------------------
            scan_golden_status = $fscanf(
                golden_fd,
                "%h\n",
                golden_h
            );

            // --------------------------------------------------------
            // Only execute testcase if both files returned valid data
            // --------------------------------------------------------
            if ((scan_input_status == 6) &&
                (scan_golden_status == 1)) begin

                testcase_count = testcase_count + 1;

                // ====================================================
                // LOAD command
                // IDLE -> LOAD
                // ====================================================
                write_reg(
                    LOAD_BASE_ADDR,
                    32'h0000_0001
                );

                // ====================================================
                // Write operands
                // ====================================================
                write_reg(A_BASE_ADDR, a_data);
                write_reg(B_BASE_ADDR, b_data);
                write_reg(C_BASE_ADDR, c_data);
                write_reg(D_BASE_ADDR, d_data);
                write_reg(E_BASE_ADDR, e_data);
                write_reg(F_BASE_ADDR, f_data);

                // ====================================================
                // START command
                // LOAD -> EXEC
                // ====================================================
                write_reg(
                    START_BASE_ADDR,
                    32'h0000_0001
                );

                // ====================================================
                // Wait EXEC -> READ
                // ====================================================
                wait_read_ready;

                if (timeout_count >= 100) begin

                    fail_count = fail_count + 1;

                    $display(
                        "[FAIL] TC=%0d : TIMEOUT",
                        testcase_count
                    );

                end
                else begin

                    // ================================================
                    // Read H result
                    // ================================================
                    read_reg(
                        H_BASE_ADDR,
                        actual_h
                    );

                    // ================================================
                    // Compare DUT vs golden
                    // ================================================
                    if (actual_h === golden_h) begin

                        pass_count = pass_count + 1;

                        $display(
                            "[PASS] TC=%0d A=%08h B=%08h C=%08h D=%08h E=%08h F=%08h H=%08h",
                            testcase_count,
                            a_data,
                            b_data,
                            c_data,
                            d_data,
                            e_data,
                            f_data,
                            actual_h
                        );

                    end
                    else begin

                        fail_count = fail_count + 1;

                        $display(
                            "[FAIL] TC=%0d A=%08h B=%08h C=%08h D=%08h E=%08h F=%08h",
                            testcase_count,
                            a_data,
                            b_data,
                            c_data,
                            d_data,
                            e_data,
                            f_data
                        );

                        $display(
                            "       DUT    = %08h",
                            actual_h
                        );

                        $display(
                            "       GOLDEN = %08h",
                            golden_h
                        );

                    end
                end

                // ====================================================
                // STOP command
                // READ -> IDLE
                // ====================================================
                write_reg(
                    STOP_BASE_ADDR,
                    32'h0000_0001
                );

                // Allow FSM to return to IDLE
                repeat (2)
                    @(posedge CLK);

            end
        end

        // ============================================================
        // Close files
        // ============================================================
        $fclose(input_fd);
        $fclose(golden_fd);

        // ============================================================
        // Summary
        // ============================================================
        $display("");
        $display("====================================================");
        $display("                TEST SUMMARY");
        $display("====================================================");
        $display("TOTAL TESTCASES : %0d", testcase_count);
        $display("PASSED          : %0d", pass_count);
        $display("FAILED          : %0d", fail_count);
        $display("====================================================");

        if ((fail_count == 0) && (testcase_count > 0)) begin
            $display("RESULT          : ALL TESTS PASSED");
        end
        else begin
            $display("RESULT          : TEST FAILED");
        end

        $display("====================================================");
        $display("");

        #100;
        $finish;
    end

endmodule