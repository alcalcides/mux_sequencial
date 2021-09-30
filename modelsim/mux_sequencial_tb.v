`timescale 1ps / 1ps

module mux_sequencial_tb;

reg toggleButton, clk, rst;
reg [8:0] dataIn1, dataIn2;
wire [8:0] dataOut;
integer chronus = 0;


mux_sequencial dut (
	.dataOut(dataOut), 
	.dataIn1(dataIn1), 
	.dataIn2(dataIn2), 
	.toggleButton(toggleButton), 
	.clk(clk), 
	.rst(rst)
);

initial begin
	clk = 0;
	forever #1 clk = ~clk;
end

initial begin
	// 0
	$display("test started");
	printData;

	#1 // 1 ps
	chronus = chronus + 1;
	rst = 1;
	toggleButton = 0;
	printData;

	#1 // 2 ps
	chronus = chronus + 1;
	rst = 0;
	dataIn1 = 10;
	dataIn2 = 20;
	printData;

	#1 // 3 ps
	chronus = chronus + 1;
	toggleButton = 1;	
	printData;
	
	#1 // 4 ps
	chronus = chronus + 1;
	toggleButton = 0;	
	printData;

	#1 // 5 ps
	chronus = chronus + 1;
	printData;

	#1 // 6 ps
	chronus = chronus + 1;
	printData;

	#1 // 7 ps
	chronus = chronus + 1;
	printData;

	#1 // 8 ps
	chronus = chronus + 1;
	toggleButton = 1;
	printData;

	#1 // 9 ps
	chronus = chronus + 1;
	printData;

	#1 // 10 ps
	chronus = chronus + 1;
	printData;

	#1 // 11 ps
	chronus = chronus + 1;
	printData;

	#1 // 12 ps
	chronus = chronus + 1;
	printData;

	#1 // 13 ps
	chronus = chronus + 1;
	toggleButton = 0;
	printData;

	#1 // 14 ps
	chronus = chronus + 1;
	printData;

	#1 // 15 ps
	chronus = chronus + 1;
	toggleButton = 1;
	printData;

	#1 // 16 ps
	chronus = chronus + 1;
	toggleButton = 0;
	printData;

	#1 // 17 ps
	chronus = chronus + 1;
	toggleButton = 1;
	printData;

	#1 // 18 ps
	chronus = chronus + 1;
	toggleButton = 0;
	printData;

	#1 // 19 ps
	chronus = chronus + 1;
	printData;

	#1 // 20 ps
	chronus = chronus + 1;
	printData;

	#1 // 21 ps
	chronus = chronus + 1;
	printData;

	#1 // 22 ps
	chronus = chronus + 1;
	printData;

	#1 // 23 ps
	chronus = chronus + 1;
	printData;

	#1 // 24 ps
	chronus = chronus + 1;
	printData;

	#1 // 25 ps
	chronus = chronus + 1;
	printData;

	#1 // 26 ps
	chronus = chronus + 1;
	printData;

	#1 // 27 ps
	chronus = chronus + 1;
	printData;

	#1 // 28 ps
	chronus = chronus + 1;
	printData;

	#1 // 29 ps
	chronus = chronus + 1;
	printData;

	#1 // 30 ps
	chronus = chronus + 1;
	printData;
end

task printData;
	$monitor("chronus,%d,clk,%b,rst,%b,toggleButton,%b,dataIn1,%d,dataIn2,%d,dataOut,%d", 
	chronus, clk, rst, toggleButton, dataIn1, dataIn2, dataOut);
	
endtask



endmodule
