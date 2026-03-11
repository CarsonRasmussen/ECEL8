module demux(
input [3:0] Y, Enabler, [1:0] Selector,
output [3:0] local_lib, [3:0] fire_department, [3:0] school, [3:0] rib_shack
);

assign local_lib = Enabler ? (Selector == 'b00 ? Y : 0) : 0;
assign fire_department = Enabler ? (Selector == 'b01 ? Y : 0) : 0;
assign school = Enabler ? (Selector == 'b10 ? Y : 0) : 0;
assign rib_shack = Enabler ? (Selector == 'b11 ? Y : 0) : 0;
                      
                
endmodule
