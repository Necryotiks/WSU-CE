`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2018 04:04:07 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
reg R,S,G,D;
wire Q,Qn;

integer i;

//sr_latch_nand srlnand(
//.Q(Q),
//.Qn(Qn),
//.S(S),
//.R(R)
//);

//sr_latch_nor srlnor(
//.Q(Q),
//.Qn(Qn),
//.S(S),
//.R(R)
//);

d_latch d(
.G(G),
.D(D),
.Q(Q),
.Qn(Qn)
);
////Simulate the NAND & NOR Cell SR-Latch
//initial begin
// // Initialize Inputs
//   S = 1;
//   R = 1;

//   // Add stimulus here
//   #100 S = 0;
//   #100 S = 1;
//   #100 R = 0;
//   #100 R = 1;
//   #100 S = 0;
//        R = 0;
//   #100 S = 1;
//        R = 1;
//   #100 S = 0;
//        R = 0;
//   #100 ;
//end

////Simulate the Following Sequence
//initial begin
// // Initialize Inputs
//   S = 1;
//   R = 1;

//   // Add stimulus here
//   #100 S = 0;
//        R = 1;
        
//   #100 S = 1;
//        R = 0;
        
//   #100 S = 1;
//        R = 1;
        
//   #100 R = 0;
//        S = 0;
        
//   #100 S = 1;
//        R = 1;
        
//   #100 S = 0;
//        R = 0;
        
//   #100 S = 0;
//        R = 1;
        
//   #100 S = 1;
//        R = 0;
        
//    #100 ;
//end

//D_Latch(Drive to metastability)
//NEED LAB VERIFICATION
initial begin
// Initialize Inputs
    G = 1;
    D = 1;

    // Add stimulus here
        #10 G = 0;
         #10 G = 1;
         #5 D = 0;
         #10 G = 1;
         #10 D = 1;
         #5 G = 0;
         #5 D = 0;
         #5 G = 1;
         #10 D = 1;
         #10 G = 0;
         #10 D = 0;
    #100 ;        
        
        

end
endmodule
