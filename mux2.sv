/*
 * This module is the Mux 2:1 component
 */ 
module mux2 #(parameter WIDTH = 8)
		(input logic [WIDTH-1:0] dato1, dato2,
		 input logic cond,
		 output logic [WIDTH-1:0] salida);
	assign salida = cond ? dato2 : dato1;
endmodule