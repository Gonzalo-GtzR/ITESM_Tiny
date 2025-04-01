/*
Opcode:
0: Suma
1:	Resta
2: Shift izquierda
3: Shift derecha
4: AND
5:	OR
6: XOR
7: Negacion (rs1)

*/

module alu_2Bits(

	input [1:0]	rs1,rs2,
	input [2:0] opcode,
	output reg [1:0] result
);

always @(*)
begin
	case(opcode)
		0:
			result = rs1 + rs2;
		1:
			result = rs1 - rs2;
		2:
			result = rs1 << rs2;
		3:
			result = rs1 >> rs2;
		4:
			result = rs1 & rs2;
		5:
			result = rs1 | rs2;
		6:
			result = rs1 ^ rs2;
		7:
			result = ~rs1;
		default:
			result = 0;
	endcase
end 

endmodule 