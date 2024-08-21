`include "L41.v"
`include "L42.v"

`timescale 1ns / 1ns

module L42_tb;

    reg [3:0] A;
    reg EN;
    wire [15:0] Y;

    // Instantiate the 4-to-16 decoder
    L42 lab (
        .A(A),
        .EN(EN),
        .Y(Y)
    );

    initial begin
        $dumpfile("L42_tb.vcd");
        $dumpvars(0, L42_tb);

        EN = 1; A = 4'b0000; #10;
        EN = 1; A = 4'b0001; #10;
        EN = 1; A = 4'b0010; #10;
        EN = 1; A = 4'b0011; #10;
        EN = 1; A = 4'b0100; #10;
        EN = 1; A = 4'b0101; #10;
        EN = 1; A = 4'b0110; #10;
        EN = 1; A = 4'b0111; #10;
        EN = 1; A = 4'b1000; #10;
        EN = 1; A = 4'b1001; #10;
        EN = 1; A = 4'b1010; #10;
        EN = 1; A = 4'b1011; #10;
        EN = 1; A = 4'b1100; #10;
        EN = 1; A = 4'b1101; #10;
        EN = 1; A = 4'b1110; #10;
        EN = 1; A = 4'b1111; #10;

        EN = 0; A = 4'b0000; #10;
        EN = 0; A = 4'b0001; #10;

        $display("Test Complete");
        $finish;
    end

endmodule

