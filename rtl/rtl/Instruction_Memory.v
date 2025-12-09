`timescale 1ns / 1ps

module Instruction_Memory (
    input  wire [31:0] A,   // Address
    output wire [31:0] RD   // Instruction
);

    
    reg [31:0] I_MEM_BLOCK [0:63];

    initial begin
        
        $readmemh("instructions.txt", I_MEM_BLOCK);
    end

    
    assign RD = I_MEM_BLOCK[A[31:2]];

endmodule
