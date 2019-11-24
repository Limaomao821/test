module partB(
    input wire p0,
    input wire g0,
    input wire p1,
    input wire g1,
    input wire p2,
    input wire g2,
    input wire p3,
    input wire g3,
    input wire      c_in,

    output wire     c1,
    output wire     c2,
    output wire     c3
)
    assign  c1 = g[0] | (p[0]&c_in);
            c2 = g[1] | (p[1]&g[0]) | (p[1]&p[0]&c_in);
            c3 = g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c_in);

endmodule