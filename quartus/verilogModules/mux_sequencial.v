// By Alcides Augusto Bezerra Neto
module mux_sequencial(
	dataOut, 
	dataIn1, 
	dataIn2, 
	toggleButton, 
	clk, 
	rst
);	
	
	parameter DATABUS_WIDTH = 9;
	
	localparam 
		FOCUS1 = 1'b0,
		FOCUS2 = 1'b1;
	
	input clk, rst, toggleButton;
	input [DATABUS_WIDTH-1:0] dataIn1, dataIn2;
	output reg [DATABUS_WIDTH-1:0] dataOut;
	
	// states variables
	reg current_state, next_state;
	
	// output decoder
	always @(*) begin
		case(current_state)
			FOCUS1: dataOut = dataIn1;
			FOCUS2: dataOut = dataIn2;
		endcase
		
	end
	
	// current state decoder
	always @(posedge clk) begin
		if(rst) begin
			current_state <= FOCUS1;	
		end
		else begin
			current_state <= next_state;
		end
	end
	
	// next state decoder
	always @(current_state, toggleButton) begin
		if(!toggleButton) begin
			case(current_state)
				FOCUS1: next_state <= FOCUS2;
				FOCUS2: next_state <= FOCUS1;
				default: next_state <= FOCUS1;
			endcase
		end 
		else begin
			next_state <= next_state;
		end
	
	end
	
	
endmodule