`include "L41.v"

`timescale 1ns / 1ns

module L41_tb;

    reg [1:0] A;
    reg EN;
    wire [3:0] Y;

    L41 uut (
        A,
        EN,
        Y
    );

    initial begin
        $dumpfile("L41_tb.vcd");
        $dumpvars(0, L41_tb);

        A = 2'b00; EN = 1;
        #10;
        A = 2'b01; EN = 1;
        #10;
        A = 2'b10; EN = 1;
        #10;
        A = 2'b11; EN = 1;
        #10;

        EN = 0;
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;

        EN = 1;
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;

        $display("Test Complete");
        $finish;
    end

endmodule

