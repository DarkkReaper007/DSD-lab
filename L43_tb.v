`include "L43.v"

`timescale 1ns / 1ns

module L43_tb;

    reg [3:0] A;
    wire [1:0] Y;

    // Instantiate the 4-to-2 priority encoder
    L43 uut (
        A,
        Y
    );

    initial begin
        $dumpfile("L43_tb.vcd");
        $dumpvars(0, L43_tb);

        A = 4'b0000; #10;
        A = 4'b0001; #10;
        A = 4'b0010; #10;
        A = 4'b0011; #10;
        A = 4'b0100; #10;
        A = 4'b0101; #10;
        A = 4'b0110; #10;
        A = 4'b0111; #10;
        A = 4'b1000; #10;
        A = 4'b1001; #10;
        A = 4'b1010; #10;
        A = 4'b1011; #10;
        A = 4'b1100; #10;
        A = 4'b1101; #10;
        A = 4'b1110; #10;
        A = 4'b1111; #10;

        $display("Test Complete");
        $finish;
    end

endmodule


