module d_latch(
input D,G,
output Q,Qn
    );
wire D_int,Q_int,Qn_int,R;

assign D_int = ~(D & G);
assign R = ~(G & ~D);
assign #1 Q_int = (~D_int | ~Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;
endmodule