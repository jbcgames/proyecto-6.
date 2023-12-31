module pre_alu(input logic [31:0]SrcB,
					input logic [11:0]instr,
					output logic [31:0]Result);
					
	always_comb begin
		//if(Alu_Control==3'b100 && I==1'b0)begin
			case(instr[6:5])
				2'b00: Result = SrcB << instr[11:7];
				2'b01: Result = SrcB >> instr[11:7];
				2'b10: Result = SrcB >>> instr[11:7];
				2'b11: Result = (SrcB >> instr[11:7]) | (SrcB << (32 - instr[11:7]));
				endcase
				
		//end else
		//Result = SrcB;
		
	end
	
endmodule