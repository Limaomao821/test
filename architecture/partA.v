module partA(
    input wire[3:0] a,
    input wire[3:0] b,
    input wire      c_in,

    output wire P;
    output wire G;
    output wire[3:0] sum
)
    wire p0, p1, p2, p3, g0, g1, g2, g3;
    assign  g0 = a[0]&b[0];
            g1 = a[1]&b[1];
            g2 = a[2]&b[2];
            g3 = a[3]&b[3];

    assign  p0 = a[0]|b[0];
            p1 = a[1]|b[1];
            p2 = a[2]|b[2];
            p3 = a[3]|b[3];

    assign P = p3 & p2 & p1 & p0;
           G = g3 | (p3&g2) | (p3&p2&g1) | (p3&p2&p1&g0);

    wire c1, c2, c3, c4;
    assign  c1 = g0 | (p0&c_in);
            c2 = g1 | (p1&g0) | (p1&p0&c_in);
            c3 = g2 | (p2&g1) | (p2&p1&g0) | (p2&p1&p0&c_in);
            c4 = g3 | (p3&g2) | (p3&p2&g1) | (p3&p2&p1&p0&c_in);

    assign  sum[0] = a[0] ^ b[0] ^ c[0];
            sum[1] = a[1] ^ b[1] ^ c[1];
            sum[2] = a[2] ^ b[2] ^ c[2];
            sum[3] = a[3] ^ b[3] ^ c[3];
endmodule