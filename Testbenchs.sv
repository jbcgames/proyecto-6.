module imem_tb();
	logic [31:0] datosalida, datoentrada;
	imem imem(datoentrada, datosalida);
	initial
	begin
	datoentrada=0;
	#10
	datoentrada=1;
	#10
	datoentrada=2;
	#10
	datoentrada=3;
	#10
	datoentrada=4;
	#10
	datoentrada=5;
	#10
	datoentrada=8;
	$stop;
	end
endmodule