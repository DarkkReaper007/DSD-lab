`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg D, clock, Resetn;
wire Q;
q1 f1(D, clock, Resetn, Q);
initial
begin
clock=0;
forever #20 clock = ~clock;
end
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0, q1_tb);
Resetn=1; D = 0; #20;
Resetn=0;
D = 1; #20; 
D = 0; #20;
D = 1;
$finish;
end
endmodule
