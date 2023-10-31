/*
 * Este módulo es el archivo de registro de la unidad Datapath.
 */ 
module regfile(input logic clk,
					input logic we3,
					input logic [3:0] ra1, ra2, wa3,
					input logic [31:0] wd3, r15,
					output logic [31:0] rd1, rd2, 
					input logic BL);

	// Internal signals
	logic [31:0] rf[14:0];
	
// Archivo de registro de tres puertos
// Escribe el tercer puerto en el flanco ascendente del reloj
	always_ff @(posedge clk)
		if (BL)
			rf[14] <= r15-32'h4;
		else
		if (we3) rf[wa3] <= wd3;
		
// Lee dos puertos de forma combinada
// registra 15 lecturas PC + 8 en su lugar
	assign rd1 = (ra1 == 4'b1111) ? r15 : rf[ra1];
	assign rd2 = (ra2 == 4'b1111) ? r15 : rf[ra2];
endmodule