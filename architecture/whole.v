module whole(
    input wire[15:0]    a,
    input wire[15:0]    b,
    input wire          c_in,

    output wire[15:0]   sum
)
    wire p0, g0, p1, g1, p2, g2, p3, g3;
    wire c1, c2, c3;

    partA partA_0(.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .P(p0), .G(g0), .sum(sum[3:0]));

    partA partA_1(.a(a[7:4]), .b(b[7:4]), .c_in(c1), .P(p1), .G(g1), .sum(sum[7:4]));

    partA partA_2(.a(a[11:8]), .b(b[11:8]), .c_in(c2), .P(p2), .G(g2), .sum(sum[11:8]));

    partA partA_3(.a(a[15:12]), .b(b[15:12]), .c_in(c3), .P(p3), .G(g3), .sum(sum[15:12]));

    partB partB_0(.p0(p0), .g0(g0), .p1(p1), .g1(g1), .p2(p2), .g2(g2), .p3(p3), .g3(g3)
                  .c_in(c_in), .c1(c1), .c2(c2), .c3(c3));
endmodule