/*******************************************************************************
 *
 * simulation source: [tb.v]
 *
 ******************************************************************************/

//`define SIM_CYCLE 'h400000000

//
// small value for testing
//
`define CYCLE 5000
//`timescale 1ms/1us
module tb;
reg			clk;
reg		[3:0]	state;
reg   enable;
reg   clean;
wire   [7:0] lout0;	
wire   [7:0] lout1;	
wire   [7:0] lout2;	
wire   [7:0] lout3;	
	
initial begin
  state=4'b0000;
  enable = 0;
  clean = 0;
  #30
    enable= 1;
  #30
    clean = 1;  
end
always begin
  //@(posedge clk);
    # 20 clk = 1; 
    # 20 clk = ~clk;
end
lab4 m(
	.clk(clk),
	.enable(enable),
	.clean(clean),	
	.lout0(lout0),
	.lout1(lout1),
	.lout2(lout2),
	.lout3(lout3)
);
endmodule