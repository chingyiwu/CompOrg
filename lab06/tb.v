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
reg   clean;
reg   start;
reg   [7:0] a;
reg   [7:0] b;
reg   [7:0] c;
reg   [7:0] d;
wire   [6:0] display1;	
wire   [6:0] display2;	

initial begin
  state=4'b0000;  
  clean = 0; 
  #30
    clean = 1;  
  #50
    a = 8'b00000101;
    b = 8'b00010001;
    c = 8'b00011011;
    d = 8'b00100111;  
    start = 1;
  #80
    start = 0;
end
always begin
  //@(posedge clk);
    # 20 clk = 1; 
    # 20 clk = ~clk;
end
lab05b m(
	.clk(clk),	
	.clean(clean),
	.start(start),
	.a(a),
	.b(b),
	.c(c),
	.d(d),	
	.display1(display1),	
	.display2(display2)
);
endmodule