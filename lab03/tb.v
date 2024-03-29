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
reg   load;
reg			clock;
reg		[3:0]	state;
reg		  in1;
reg		  in2;
reg		  in3;
reg		 	in4;
reg		 	in5;
reg		 	in6;
reg		 	in7;
reg		 	in8;
wire   out1;
wire   out2;
wire	  out3;
wire	  out4;
wire	 	out5;
wire	 	out6;
wire	 	out7;
wire	 	out8;


initial begin
  state=4'b0000;
  load = 0;
  in1 = 0;
  in2 = 0;
  in3 = 0;
  in4 = 0;
  in5 = 0;
  in6 = 0;
  in7 = 0;
  in8 = 0;
  #30
    in1<=1;     in2<=0;     in3<=1;     in4<=0; 
  #40
    in5<=0;     in6<=1;     in7<=0;     in8<=1;
  #40
    load<=1;
  #40  
    load<=0;
  #40
    in1<=1;     in2<=1;     in3<=1;     in4<=0;
  #40
    in5<=0;     in6<=0;     in7<=1;     in8<=0;
  #40
    load<=1;
  #40  
    load<=0;
end
always begin
  //@(posedge clk);
    # 20 clock = 1; 
    # 20 clock = ~clock;
end
a1021 m(
	.in1(in1),
	.in2(in2),
	.in3(in3),
	.in4(in4),
	.in5(in5),
	.in6(in6),
	.in7(in7),
	.in8(in8),
	.clock(clock),
	.load(load),
	.out1(out1),
	.out2(out2),
	.out3(out3),
	.out4(out4),
	.out5(out5),
	.out6(out6),
	.out7(out7),
	.out8(out8)
);
endmodule

