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
reg   Load;
reg   Count;
reg			clk;
reg		[3:0]	state;
reg		  D0;
reg		  D1;
reg		  D2;
reg		 	D3;
reg   clean;
wire   Q0;
wire   Q1;
wire	  Q2;
wire	  Q3;
wire   CO;
initial begin
  state=4'b0000;
  Load = 0;
  Count= 0;
  clean= 0;
  D0 = 0;
  D1 = 0;
  D2 = 0;
  D3 = 0;
  #20
    clean= 1;
  #30
    Count=1; 
  #40
    Count=0;
  #40
    Count=1; 
  #40
    Count=0;
  #40
    Count=1; 
  #40
    Count=0;
  #40
    Count=1; 
  #40
    Count=0;
  #40
    Count=1;
  #40
    Count=0;
  #40
    Count=1; 
  #40
    Count=0;
  #40
    Count=1; 
  #40
    Count=0;
  #40
    Count=1; 
  #40
    Count=0;
  #40
    Count=1; 
   #40
    Count=0;
  
end
always begin
  //@(posedge clk);
    # 20 clk = 1; 
    # 20 clk = ~clk;
end
counter m(
	.D0(D0),
	.D1(D1),
	.D2(D2),
	.D3(D3),
	.clk(clk),
	.Load(Load),
	.Count(Count),
	.clean(clean),
	.Q0(Q0),
	.Q1(Q1),
	.Q2(Q2),
	.Q3(Q3),
	.CO(CO)
);
endmodule