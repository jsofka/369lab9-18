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
    input [4:0] instruction;
    input [1:0] ALUOp;
    output reg [3:0] ALUOp2;
    
    always @ (*) begin
        case (instruction)
            //and
            6'b100100: begin
                ALUOp2 = 5'b00011;
            end
            //and immediate
            6'b001000: begin
                ALUOp2 = 5'b00011;
            end
            //or
            6'b100101: begin
                ALUOp2 = 5'b00110;
            end
            //Not or
            6'b100111: begin
                ALUOp2 = 5'b01101;
            end
            //exclusive or
            6'b100110: begin
                ALUOp2 = 5'b01111;
            end
            //or immediate
            6'b001101: begin
                ALUOp2 = 5'b00110;
            end
            //exclusive or immediate
            6'b001110: begin
                ALUOp2 = 5'b00111;
            end
            //sign-extend halfword
            6'b100000: begin
                ALUOp2 = 5'b01111;
            end
            //shift left
            6'b000000: begin
                ALUOp2 = 5'b00100;
            end
            //shift right
            6'b000010: begin
                ALUOp2 = 5'b00101;
            end
            //Shift Word Left Logical Variable
            6'b000100: begin
                ALUOp2 = 5'b01000;
            end
            //Shift Word Right Logical Variable 
            6'b000110: begin
                ALUOp2 = 5'b01001;
            end
            //set on less than
            6'b101010: begin
                ALUOp2 = 5'b00101;
            end
            //set on less than immediate
            6'b001010: begin
                ALUOp2 = 5'b00101;
            end
            //move conditional on not zero
            6'b001011: begin
                ALUOp2 = 5'b10000;
            end
            //move conditional on zero
            6'b001010: begin
                ALUOp2 = 5'b10001;
            end
            //Rotate Word Right Variable
            6'b000110: begin
                ALUOp2 = 5'b10010;
            end
            //Rotate word right
            6'b000010: begin
                ALUOp2 = 5'b10010;
            end
            //Shift word right arithmetic
            6'b000011: begin
                ALUOp2 = 5'b10011;
            end
            //Shift Word Right Arithmetic Variable
            6'b000111: begin
                ALUOp2 = 5'b10011;
            end
            //Sign-Extend Byte
            6'b100000: begin
                ALUOp2 = 5'b10100;
            end
            //Set on Less Than Immediate Unsigned
            6'b001011: begin
                ALUOp2 = 5'b10101;
            end
            //Set on Less Than Unsigned 
            6'b101011: begin
                ALUOp2 = 5'b10110;
            end
            // add
            6'b100000: begin
                ALUOp2 = 5'b00000;
            end
            // sub
            6'b100010: begin
                ALUOp2 = 5'b00001;
            end
            // mul
            6'b000010: begin
                ALUOp2 = 5'b00010;
            end
        endcase
    end
    
    
endmodule
