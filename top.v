module top(
input [15:0] sw,
input btnL, btnU, btnD, btnR, btnC,
output [15:0] led
);

wire [1:0] concat;
wire [1:0] concat2;
wire [3:0] connect;
assign concat = {btnU, btnL};
assign concat2 = {btnR, btnD};

    mux mux_inst(
        .CEO(sw[3:0]),
        .ME(sw[7:4]),
        .FRED(sw[11:8]),
        .JILL(sw[15:12]),
        .Sel(concat),
        .Enable(btnC),
        .Y(connect)
    );
    
    demux demux_inst(
         .Y(connect),
        .local_lib(led[3:0]),
        .fire_department(led[7:4]),
        .school(led[11:8]),
        .rib_shack(led[15:12]),
        .Selector(concat2),
        .Enabler(btnC)
    );



endmodule