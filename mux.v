module mux(
input [3:0] CEO, [3:0] ME, [3:0] FRED, [3:0] JILL, Enable, [1:0] Sel,
output [3:0] Y
);

assign Y = Enable ? (Sel == 'b00 ? CEO:
                     Sel == 'b01 ? ME:
                     Sel == 'b10 ? FRED:
                     Sel == 'b11 ? JILL: 0) : 0;

endmodule