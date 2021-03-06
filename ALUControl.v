`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 03:06:33 PM
// Design Name: 
// Module Name: ALUControl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALUControl(ALUOp, instruction, ALUOp2);
    input [5:0] instruction;
    input [1:0] ALUOp;
    output reg [5:0] ALUOp2;
    
    always @ (*) begin
        case (instruction)
            //and
            6'b100100: begin
                ALUOp2 = 6'b000011;
            end
            //and immediate
            6'b001000: begin
                ALUOp2 = 6'b000011;
            end
            //or
            6'b100101: begin
                ALUOp2 = 6'b000100;
            end
            //Not or
            6'b100111: begin
                ALUOp2 = 6'b001110;
            end
            //exclusive or
            6'b100110: begin
                ALUOp2 = 6'b001101;
            end
            //or immediate
            6'b001101: begin
                ALUOp2 = 6'b000100;
            end
            //exclusive or immediate
            6'b001110: begin
                ALUOp2 = 6'b001101;
            end
            //sign-extend halfword
            6'b100000: begin
                ALUOp2 = 6'b001111;
            end
            //shift left
            6'b000000: begin
                ALUOp2 = 6'b001000;
            end
            //shift right
            6'b000010: begin
                ALUOp2 = 6'b001001;
            end
            //Shift Word Left Logical Variable
            6'b000100: begin
                ALUOp2 = 6'b001000;
            end
            //Shift Word Right Logical Variable 
            6'b000110: begin
                ALUOp2 = 6'b001001;
            end
            //set on less than
            6'b101010: begin
                ALUOp2 = 6'b000101;
            end
            //set on less than immediate
            6'b001010: begin
                ALUOp2 = 6'b000101;
            end
            //move conditional on not zero
            6'b001011: begin
                ALUOp2 = 6'b010000;
            end
            //move conditional on zero
            6'b001010: begin
                ALUOp2 = 6'b010010;
            end
            //Rotate Word Right Variable
            6'b000110: begin
                ALUOp2 = 6'b011000;
            end
            //Rotate word right
            6'b000010: begin
                ALUOp2 = 6'b010001;
            end
            //Shift word right arithmetic
            6'b000011: begin
                ALUOp2 = 6'b100011;
            end
            //Shift Word Right Arithmetic Variable
            6'b000111: begin
                ALUOp2 = 6'b100011;
            end
            //Sign-Extend Byte
            6'b100000: begin
                ALUOp2 = 6'b010001;
            end
            //Set on Less Than Immediate Unsigned
            6'b001011: begin
                ALUOp2 = 6'b110010;
            end
            //Set on Less Than Unsigned 
            6'b101011: begin
                ALUOp2 = 6'b110010;
            end
            // add
            6'b100000: begin
                ALUOp2 = 6'b000000;
            end
            //addiu
            6'b001001: begin
                ALUOp2 = 6'b000000;
            end
            //addu
            6'b100001: begin
                ALUOp2 = 6'b000000;
            end
            //addi
            6'b001000: begin
                ALUOp2 = 6'b000000;
            end
            // sub
            6'b100010: begin
                ALUOp2 = 6'b000001;
            end
            // mul
            6'b000010: begin
                ALUOp2 = 6'b000010;
            end
            // mult
            6'b011000: begin
                ALUOp2 = 6'b000010;
            end
            //multu
            6'b011001: begin
                ALUOp2 = 6'b000010;
            end
            // madd
            6'b011100: begin
                ALUOp2 = 6'b001011;
            end
            // msub
            6'b000100: begin
                ALUOp2 = 6'b001100;
            end
            6'b010001: begin
                ALUOp2 = 6'b010010;
            end
            6'b010011: begin
                ALUOp2 = 6'b010011;
            end
            6'b010000: begin
                ALUOp2 = 6'b010100;
            end
            6'b010010: begin
                ALUOp2 = 6'b010101;
            end
        endcase
    end
    
    
endmodule
