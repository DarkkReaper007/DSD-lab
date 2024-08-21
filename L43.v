module L43 (
    input wire [3:0] A,
    output reg [1:0] Y
);

    always @(*) begin
        casex (A)
            4'b1xxx: Y = 2'b11; // Highest priority: A[3] is 1
            4'b01xx: Y = 2'b10; // Next priority: A[2] is 1
            4'b001x: Y = 2'b01; // Next priority: A[1] is 1
            4'b0001: Y = 2'b00; // Lowest priority: A[0] is 1
            default: Y = 2'b00; // Default case if all inputs are 0
        endcase
    end

endmodule

