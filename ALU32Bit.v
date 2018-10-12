`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369 - Computer Architecture
// 
// Module - ALU32Bit.v
// Description - 32-Bit wide arithmetic logic unit (ALU).
//
// INPUTS:-
// ALUControl: N-Bit input control bits to select an ALU operation.
// A: 32-Bit input port A.
// B: 32-Bit input port B.
//
// OUTPUTS:-
// ALUResult: 32-Bit ALU result output.
// ZERO: 1-Bit output flag. 
//
// FUNCTIONALITY:-
// Design a 32-Bit ALU, so that it supports all arithmetic operations 
// needed by the MIPS instructions given in Labs5-8.docx document. 
//   The 'ALUResult' will output the corresponding result of the operation 
//   based on the 32-Bit inputs, 'A', and 'B'. 
//   The 'Zero' flag is high when 'ALUResult' is '0'. 
//   The 'ALUControl' signal should determine the function of the ALU 
//   You need to determine the bitwidth of the ALUControl signal based on the number of 
//   operations needed to support. 
////////////////////////////////////////////////////////////////////////////////

module ALU32Bit(ALUControl, A, B, ALUResult, Zero);

	input [4:0] ALUControl; // control bits for ALU operation
                                // you need to adjust the bitwidth as needed
	input [31:0] A, B;	    // inputs

	output reg [31:0] ALUResult;	// answer
	output Zero;	    // Zero=1 if ALUResult == 0
	integer i, flag = 0;

	always@(ALUControl, A, B) begin

		case(ALUControl)
			
            0: begin //add

			ALUResult = (A + B);

			end

			1: begin //sub

			ALUResult = (A - B);
			
            end
			
            2: begin //mul

			ALUResult = (A * B);
			
            end
			
            3: begin //and
			
            ALUResult = (A & B);
			
            end
			
            4: begin // or
                        
            ALUResult = (A | B);
                        
            end
                        
            5: begin //slt
                        
            ALUResult = (A < B) ? 1 : 0;
                        
            end
                        
            6: begin // beq
                        
            ALUResult = (A == B) ? 1 : 0;
                        
            end
                        
            7: begin // bne

			ALUResult = (A != B) ? 1 : 0;

			end

			8: begin // sll
			
            ALUResult = (A << B);
                        
            end
                        
            9: begin //srl
                        
            ALUResult = (A >> B);
                        
            end
                        
            10: begin 

			ALUResult = A << (32 - B);
			
            end

			11: begin // count 1

			ALUResult = 0;
			
            flag = 0;
			
            for (i = 31; i >= 0; i = i - 1) begin

			if (A[i] == 1 && flag == 0) begin
				
            ALUResult = ALUResult + 1;
				
            flag = 0;
                        
            end
                        
            else
                        
            flag = 1;
                        
            
            end

			end
			
            12: begin // count 0
            
            ALUResult = 0;
                        
            flag = 0;
                        
            for (i = 31; i >= 0; i = i - 1) begin
                        
            if (A[i] == 0 && flag == 0) begin

			ALUResult = ALUResult + 1;
			
            flag = 0;

			end
			
            else
			
            flag = 1;

			
            end
                        
            end
            
            13: begin // Not or
                ALUResult = !(A | B);
            end
            
            14: begin //xor
                ALUResult = A ^ B;
            end
            
            15: begin //sign-extend halfword
            
            end
            
            16: begin //move coditional on not zero
                if (B != 0) begin
                    ALUResult = A;
                end
            end
            
            17: begin //move conditional on zero
                if (B == 0) begin
                    ALUResult = A;
                end
            end
            
            18: begin //Rotate Word Right Variable
            
            end
            
            19: begin //Shift word right arithmetic
            
            end
            20: begin //sign-extend byte
            
            end
            
            21: begin //Set on Less Than Immediate Unsigned
            
            end
            
            22: begin //Set on Less Than Unsigned 
            
            end
            endcase
            
            end

	
            always@(ALUResult) begin
                    
            if (ALUResult == 0) begin
            
                Zero = 1;
            
            end
            
            else begin
            
                Zero = 0;
                    
            end            
	
        end



endmodule

