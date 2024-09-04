
module q1(D,clock,Resetn,Q);
input D;
input clock;
input Resetn;
output reg Q;
always @ (posedge clock or posedge Resetn)
begin
if(Resetn)
Q <= 0;
else
Q <= D;
end
endmodule
