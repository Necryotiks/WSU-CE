`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2019 03:15:19 PM
// Design Name: 
// Module Name: assert
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

//NOT FOR SIMULATION
module assert #(parameter WIDTH = 1)(
    input wire i_CLK,
    input wire i_Data_Received,
    input wire [WIDTH-1:0] i_Expected,
    input wire [WIDTH-1:0] i_Actual,
    output reg o_Data_Request
    );
    
    always@(posedge i_CLK)
    begin
    if(i_Data_Received == 1)begin
        o_Data_Request = 0;
        if(i_Actual !== i_Expected)
            begin
                 $display("ASSERTION FAILED!");
                 $display("Module: %m");
                 $display("Expected: %b",i_Expected);
                 $display("Actual: %b",i_Actual);
                 $finish;
            end
        else
            begin
                o_Data_Request = 1;
            end
    end
    else
        begin 
        ;
        end
    
    end
    
    
endmodule
