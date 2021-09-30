`timescale 1ps / 1ps

module mux_sequencial_tb;

reg toggleButton, clk, rst;
reg [8:0] dataIn1, dataIn2;
wire [8:0] dataOut;


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
	$display("test started");
	#1 printData;
	#1 printData;
	#1 printData;
	#1 printData;
	#1 printData;

end

task printData;
	$monitor("clk,%b,rst,%b,toggleButton,%b,dataIn1,%d,dataIn2,%d,dataOut,%d", 
	clk, rst, toggleButton, dataIn1, dataIn2, dataOut);
	
endtask



endmodule
