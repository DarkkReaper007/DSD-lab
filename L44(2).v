module L44 (
    input wire [15:0] A,
    output reg [3:0] Y
);

    integer i;
    reg found;

    always @(*) begin
        found = 0;   // Initialize flag
        Y = 4'b0000; // Default output
        for (i = 15; i >= 0; i = i - 1) begin
            if (A[i]) begin
                Y = i;    // Set Y to the index of the highest active bit
                found = 1; // Set flag to indicate a high bit was found
            end
        end
        if (!found) begin
            Y = 4'b0000; // Ensure output is 0 if no active bit is found
        end
    end

endmodule

