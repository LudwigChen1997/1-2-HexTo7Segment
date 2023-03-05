// This is a little module to achieve hexa to 7-segment encoder in the future
// To achieve this function here have the following mapping relationship

// Assume the input MSB to LSB is from hex[3] to hex[0], output is from seg[0] to seg[6]

/*
[3 :0]          [6  :  0]
"0000" equal to "0111111" means "0"

"0001" equal to "0000110" means "1"

"0010" equal to "1011011" means "2"

"0011" equal to "1001111" means "3"

"0100" equal to "1100110" means "4"

"0101" equal to "1101101" means "5"

"0110" equal to "1111101" means "6"

"0111" equal to "0000111" means "7"

"1000" equal to "1111111" means "8"

"1001" equal to "1101111" means "9"

"1010" equal to "1110111" means "A"

"1011" equal to "1111100" means "b"

"1100" equal to "0111001" means "C"

"1101" equal to "1011110" means "d"

"1110" equal to "1111001" means "E"

"1111" equal to "1110001" means "F"
*/

Modele HexTo7Segment (
	// Port Declaration List
	portHex, port7Segment // Ports declared as untyped list
);

input [3:0] portHex;
output [6:0] port7Segment;

// Setting the initial input value as 0 and the output value equal to 0
portHex = 4'b0000;
port7Segment = 7'b111111;

// judge the input status
if (portHex == 4'b0001) begin
		port7Segment = 7'b0000110; // 1
end else if (portHex == 4'b0010) begin
		port7Segment = 7'b1011011; // 2
end else if (portHex == 4'b0011) begin
		port7Segment = 7'b1001111; // 3
end else if (portHex == 4'b0100) begin
		port7Segment = 7'b1100110; // 4
end else if (portHex == 4'b0101) begin
		port7Segment = 7'b1101101; // 5
end else if (portHex == 4'b0110) begin
		port7Segment = 7'b1111101; // 6
end else if (portHex == 4'b0111) begin
		port7Segment = 7'b0000111; // 7
end else if (portHex == 4'b1000) begin
		port7Segment = 7'b1111111; // 8
end else if (portHex == 4'b1001) begin
		port7Segment = 7'b1101111; // 9
end else if (portHex == 4'b1010) begin
		port7Segment = 7'b1110111; // A
end else if (portHex == 4'b1011) begin
		port7Segment = 7'b1111100; // b
end else if (portHex == 4'b1100) begin
		port7Segment = 7'b0111001; // C
end else if (portHex == 4'b1101) begin
		port7Segment = 7'b1011110; // d
end else if (portHex == 4'b1110) begin
		port7Segment = 7'b1111001; // E
end else if (portHex == 4'b1111) begin
		port7Segment = 7'b1110001; // F
end 

endmodule // end module