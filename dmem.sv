/*
 * Este módulo es la memoria de datos del procesador ARM de ciclo único.
 * Corresponde a la matriz RAM y algunos periféricos externos.
 */ 
module dmem(input logic clk, we, input logic [31:0] a, wd, output logic [31:0] rd,
            input logic [9:0] switches, output logic [9:0] leds);
	// Matriz interna para la memoria (Sólo 64 - 32 palabras)
	logic [31:0] RAM[63:0];

	initial
		// Descomente solo la siguiente línea para cargar los datos requeridos para el banco de pruebas del libro.
		//$readmemh("C:/Users/MiguelAngelAlvarezGu/Proyect/ARM-SingleCycle/dmem_tb_from_book.dat",RAM);
		
		// Descomente solo la siguiente línea para cargar los datos requeridos para la prueba de periféricos
		// $readmemh("dmem_to_test_peripherals.dat",RAM);

		// Descomente solo la siguiente línea para cargar los datos requeridos para el programa realizado por los estudiantes
		$readmemh("D:/Escritorio/Universidad/Electronica Digital/26-10-23/ARM-SingleCycle/dmem_made_by_students.dat",RAM);
	
	// Proceso de lectura desde matriz RAM o periféricos mapeados en memoria
	always_comb
		if (a == 32'hC000_0000)			// Lectura de los Switches (10-bits)
			rd = {22'b0, switches};
		else									// La lectura de 0 a 252 recupera datos de la matriz de RAM
			rd = RAM[a[31:2]]; 			// Palabra alineada (múltiplo de 4)
	
	// Proceso para escribir en una matriz RAM o periféricos asignados en la memoria
	always_ff @(posedge clk) begin
		if (we)
			if (a == 32'hC000_0004)	// Escribir en LED (10 bits)
				leds <= wd[9:0];
			else	
				RAM[a[31:2]] <= wd;
	end	
endmodule