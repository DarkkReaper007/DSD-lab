module L42 (
    input wire [3:0] A,
    input wire EN,
    output wire [15:0] Y
);

    wire [3:0] Y1, Y2, Y3, Y4;
    wire EN0, EN1, EN2, EN3;

    // Decode the high-order bits to select one of four 2-to-4 decoders
    assign EN0 = EN & ~A[3] & ~A[2];
    assign EN1 = EN & ~A[3] & A[2];
    assign EN2 = EN & A[3] & ~A[2];
    assign EN3 = EN & A[3] & A[2];

    // Instantiate four 2-to-4 decoders
    L41 d0 (
        .A(A[1:0]),
        .EN(EN0),
        .Y(Y1)
    );

    L41 d1 (
        .A(A[1:0]),
        .EN(EN1),
        .Y(Y2)
    );

    L41 d2 (
        .A(A[1:0]),
        .EN(EN2),
        .Y(Y3)
    );

    L41 d3 (
        .A(A[1:0]),
        .EN(EN3),
        .Y(Y4)
    );

    // Combine the outputs of the four 2-to-4 decoders
    assign Y = {Y4, Y3, Y2, Y1};

endmodule

