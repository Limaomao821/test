module tlb_cam(
    input wire[33:0]    vpn_in,
    
    output reg[25:0]    pfn_out,
    output reg          hit
);
    wire[33:0]  entry[0:63];
    wire        address[0:63];
    reg[25:0]   page[0:63];
    
    assign  address[0]  = entry[0]     ~^ vpn_in;
            ...
            address[63] = entry[63]    ~^ vpn_in;
    
    always @(*) begin
        if(address[0] == 34'h111111111) begin
            if(valid = 1'b1) begin
                hit     <= 1'b1;
                pfn_out <= page[0];
            end
        end
        ...
        if(address[63] == 34'h111111111) begin
            if(valid = 1'b1) begin
                hit     <= 1'b1;
                pfn_out <= page[63];
            end
        end
    end
endmodule