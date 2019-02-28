module sr_nand_tb;


reg R,S,G,D;
wire Q,Qn;

integer i;

sr_latch_nand srlnand(
.Q(Q),
.Qn(Qn),
.S(S),
.R(R)
);

//Simulate the NAND & NOR Cell SR-Latch
initial begin
 // Initialize Inputs
   S = 1;
   R = 1;

   // Add stimulus here
   #100 S = 0;
   #100 S = 1;
   #100 R = 0;
   #100 R = 1;
   #100 S = 0;
        R = 0;
   #100 S = 1;
        R = 1;
   #100 S = 0;
        R = 0;
   #100 ;
end

endmodule