/*
 * Este módulo es el Decodificador de la Unidad de Control.
 */ 
module decoder(input logic [1:0] Op,
					input logic [5:0] Funct,
					input logic [3:0] Rd,
					output logic [1:0] FlagW,
					output logic PCS, RegW, MemW,
					output logic MemtoReg, ALUSrc,
					output logic [1:0] ImmSrc, RegSrc,
					output logic [2:0] ALUControl);
	// Internal signals
	logic [9:0] controls;
	logic Branch, ALUOp;

	// Main del Decodificador
	always_comb
		casex(Op)
											// Tratamiento de datos inmediato
			2'b00: 	if (Funct[5])	controls = 10'b0000101001;
											// Registro de procesamiento de datos
						else				controls = 10'b0000001001;
											// LDR
			2'b01: 	if (Funct[0])	controls = 10'b0001111000;
											// STR
						else				controls = 10'b1001110100;
											// B
			2'b10: 						controls = 10'b0110100010;
											//	No implementado
			default: 					controls = 10'bx;
		endcase
		
	assign {RegSrc, ImmSrc, ALUSrc, MemtoReg, RegW, MemW, Branch, ALUOp} = controls;

	// ALU Decoder
	always_comb
		if (ALUOp) begin // ¿Qué instrucción DP?
			case(Funct[4:1])
				4'b0100: ALUControl = 3'b000; // ADD
				4'b0010: ALUControl = 3'b001; // SUB
				4'b0000: ALUControl = 3'b010; // AND
				4'b1100: ALUControl = 3'b011; // ORR
				default: ALUControl = 3'bx; // No implementado
			endcase

			// actualizar banderas si el bit S está configurado (C y V solo para aritmética)
			FlagW[1] = Funct[0];
			FlagW[0] = Funct[0] & (ALUControl == 3'b000 | ALUControl == 3'b001);
			end 
			else begin
				ALUControl = 3'b000; // agregar para instrucciones que no sean DP
				FlagW = 2'b00; // no actualizar banderas
			end
			
	// Lógica de PC
	assign PCS = ((Rd == 4'b1111) & RegW) | Branch;
endmodule
