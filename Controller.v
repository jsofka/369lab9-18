`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2018 02:17:20 PM
// Design Name: 
// Module Name: Controller
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


module Controller(instruction, RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);
    input [4:0] instruction;
    output reg RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite;
    
    always @ (instruction) begin
        RegDst = 0;
        Branch = 0;
        MemRead = 0;
        MemtoReg = 0;
        ALUOp = 2'b00;
        MemWrite = 0;
        ALUSrc = 0;
        RegWrite = 0;
        
  
        case(instruction)
            6'b000000: begin
                RegDst = 1;
                RegWrite = 1;
                ALUOp = 2'b10;
            end
            6'b100011: begin
                ALUSrc = 1;
                MemtoReg = 1;
                RegWrite = 1;
                MemRead = 1;
            end
            6'b101011: begin
                ALUSrc = 1;
                MemWrite = 1;
            end
            6'b000100:begin
                Branch = 1;
                ALUOp = 2'b01;
            end
        endcase
    
end
        

endmodule
