module d_tb;
reg G,D;
wire Q,Qn;

d_latch d(
.G(G),
.D(D),
.Q(Q),
.Qn(Qn)
);

initial begin
// Initialize Inputs
    G = 1;
    D = 1;

    // Add stimulus here
        #10 G = 0;
         #10 G = 1;
         #5 D = 0;
          #1 G = 1;
             D <= 1;
          #1 G <= 0;
          D <= 0;
           #1 G = 1;
              D <= 1;
                   #1 G <= 0;
                   D <= 0;
                    #1 G = 1;
                              D <= 1;
                            #1 G <= 0;
                            D <= 0;
          D = 0;
          G <= 1;
          D = 1;
          G <= 0;
          D = 0;
          G <= 1;
         #5 G = 0;
         #5 D = 0;
         #5 G = 1;
         #10 D = 1;
         #10 G = 0;
         #10 D = 0;
    #100 ;        
        
        

end
endmodule