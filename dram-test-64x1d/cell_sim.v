/*
* Create to run alliance testcases
*/

// FDRE
module FDRE(
    D, Q, C, CE, R
);
input D, C, CE, R;
output Q;

reg	Q;
wire d_Q;

assign d_Q = CE ? D : Q;

always @(posedge C)
begin
 if (!R)
  Q <= 0;
 else
  Q <= d_Q;
end
endmodule

// 64x1 RAM
module RAM64X1D (

 WCLK, A5, A4, A3, A2, A1, A0,
 DPRA5, DPRA4, DPRA3, DPRA2, DPRA1, DPRA0,
 DPO, D, WE );

parameter INIT=64'b0;

input WCLK, A5, A4, A3, A2, A1, A0, DPRA5, DPRA4, DPRA3, DPRA2, DPRA1, DPRA0;
input D, WE;

output DPO;

wire [4:0] wa, ra;

assign wa = {A5, A4, A3, A2, A1, A0};
assign ra = {DPRA5, DPRA4, DPRA3, DPRA2, DPRA1, DPRA0};

always @(posedge WCLK) 
begin
	if (WE)
		memory[wa] <= D;
	else
	    DPO <= memory[ra];
end

integer i;
initial
begin
	for(i = 0; i < ((2**5)-1); i = i + 1)
		memory[i] = 0;
end

endmodule

// BUFG
module BUFG (
        I,
        O
    );

input I;
output O;

assign O = I;

endmodule


