/*
 * Este módulo es el TOP del procesador ARM de ciclo único
 */ 
module top(input logic clk, nreset,
			  output logic [31:0] WriteData, DataAdr,
			  output logic MemWrite,
			  input logic [9:0] switches,
			  output logic [9:0] leds);

	// Señales
	logic reset;
	assign reset = ~nreset;
	logic [31:0] PC, Instr, ReadData;
	
	// Creacion memoria de instrucciones
	imem imem(PC, Instr);

	// Creacion de memoria de datos (RAM + peripherals)
	dmem dmem(clk, MemWrite, DataAdr, WriteData, ReadData, switches, leds);

	// Creacion del procesador
	arm arm(clk, reset, PC, Instr, MemWrite, DataAdr, WriteData, ReadData);
endmodule