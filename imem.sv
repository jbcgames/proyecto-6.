/*
 * Este módulo es la memoria de instrucciones del procesador ARM de ciclo único.
 */ 
module imem(input logic [31:0] a, output logic [31:0] rd);
	// Matriz interna para la memoria (Sólo de 64-32 palabras)
	logic [31:0] RAM[63:0];

	// La siguiente línea carga la instrucción del programa.
	//	Cuidado con tener un programa más largo que la memoria disponible
	initial
		// Descomente solo la siguiente línea para cargar el código del libro (testbench)
		$readmemh("C:/Users/MiguelAngelAlvarezGu/Proyect/ARM-SingleCycle/imem_tb_from_book.dat",RAM);
		
		// Descomente solo la siguiente línea para cargar el código proporcionado para verificar los periféricos
		// $readmemh("imem_to_test_peripherals.dat",RAM);
		
		// Descomente solo la siguiente línea para cargar el código creado por los estudiantes.
		// $readmemh("imem_made_by_students.dat",RAM);

	assign rd = RAM[a[31:2]]; // palabra alineada
endmodule

