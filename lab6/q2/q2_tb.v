`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg T, clock, Resetn;
wire Q;
q2 f1(T, clock, Resetn, Q);
initial
begin
clock=0;
forever #20 clock = ~clock;
end
initial
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0, q2_tb);
T <= 0; Resetn <=0; #20;
T <= 0; Resetn <=1; #20;
T <= 1; Resetn <=0; #20;
T <= 1; Resetn <=0; #20;
T <= 1; Resetn <=1; #20;
$finish;
end
endmodule
