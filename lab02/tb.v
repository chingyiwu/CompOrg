/*******************************************************************************
 *
 * simulation source: [tb.v]
 *
 ******************************************************************************/

//`define SIM_CYCLE 'h400000000

//
// small value for testing
//
`define SIM_CYCLE 5000
//`timescale 100s/1s
module tb;
reg   clean;
reg			clk;
reg		[3:0]	state;
reg		  X0;
reg		  X1;
reg		  X2;
reg		 	X3;
wire    lock;
wire    unlock;
wire	  A1;
wire	  A2;
wire	 	A3;
wire	 	A4;

initial begin
  state=4'b0000;
  clean=0;
  X0 = 0;
  X1 = 0;
  X2 = 0;
  X3 = 0;
  #30
    X0<=0;     X1<=0;     X2<=1;     X3<=0; 
  #40
    X0<=0;     X1<=1;     X2<=0;     X3<=0;
  #40
    X0<=1;     X1<=0;     X2<=0;     X3<=0;
  #40
    X0<=0;     X1<=1;     X2<=0;     X3<=0;
  #40
    X0<=0;     X1<=0;     X2<=1;     X3<=0;
  #40
    X0<=0;     X1<=0;     X2<=0;     X3<=1;
end
always begin
  //@(posedge clk);
    # 20 clk = 1; clean=1;
    # 20 clk = ~clk;
end
block1 m(
	.X0(X0),
	.X1(X1),
	.X2(X2),
	.X3(X3),
	.clk(clk),
	.clean(clean),
	.A0(A0),
	.A1(A1),
	.A2(A2),
	.A3(A3),
	.A4(A4),
	.lock(lock),
	.unlock(unlock)
);
endmodule

