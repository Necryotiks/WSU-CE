`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2019 03:40:00 PM
// Design Name: 
// Module Name: Bounce_Counter_FSM
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


module Bounce_Counter_FSM(

    input i_100MHZCLK,
    input i_RST,
    input i_Signal,
    output [13:0] o_DATA,
    output o_CEN
    );
    
    localparam s_WAIT = 2'd0;
    localparam s_ASSERT = 2'd1;
    localparam s_DONE = 2'd3;
  

    wire w_100MHZCLK;
    wire w_RST;
    wire w_Signal;
    reg r_CEN = 1'd0;
    reg [1:0] r_NEXT_STATE = 2'd0;
    reg [1:0] r_CURRENT_STATE = 2'd0;
    reg [13:0] r_COUNTER = 14'd0;
   

   assign w_100MHZCLK = i_100MHZCLK;
   assign w_RST = i_RST;
   assign w_Signal = i_Signal;
   assign o_CEN = r_CEN;
   assign o_DATA = r_COUNTER;
   always@(*)
   begin
        case(r_CURRENT_STATE)
            s_WAIT:
                begin
                    if(w_Signal == 1'd1) 
                        r_NEXT_STATE = s_ASSERT;
                    else 
                    begin
                        r_NEXT_STATE = s_WAIT;
                    end
                end
            s_ASSERT:
                begin
                    if(w_Signal == 1'd0) begin
                        r_NEXT_STATE = s_DONE;
                        end
                    else
                        begin
                        r_NEXT_STATE = s_ASSERT;
                        end
                end
             s_DONE:
                begin
                    r_NEXT_STATE = s_DONE;
                end
              default: 
              r_NEXT_STATE = s_WAIT;
             endcase 
   end
    
   always@(posedge w_100MHZCLK or posedge(w_RST))
   begin
        if(w_RST == 1'd1)
            r_CURRENT_STATE <= s_WAIT;
        else
            r_CURRENT_STATE <= r_NEXT_STATE;
   end
   
   
   always@(posedge w_100MHZCLK or posedge w_RST)
   begin
   if (w_RST == 1'd1) begin
	   r_COUNTER <= 14'd0;
	   r_CEN <= 1'd0;
   end
   else if(r_NEXT_STATE == s_WAIT)
   begin
        r_COUNTER <= 14'd0;
        r_CEN <= 1'd0;
   end
   else if(r_NEXT_STATE == s_ASSERT) begin
        r_COUNTER <= r_COUNTER + 1'b1;
        r_CEN <= 1'd1;
        end
   else if (r_NEXT_STATE == s_DONE)
        begin
        r_COUNTER <= r_COUNTER;
        r_CEN <= 1'd0;
        end
else
	begin
        r_COUNTER <= r_COUNTER;
        r_CEN <= 1'd0;
	end
   end
`ifdef FORMAL
reg r_valid = 1'b0;
always @($global_clock) begin
	r_valid <= 1'b1;
	if($rose(w_100MHZCLK) && r_valid == 1'b1) begin
		if(r_CURRENT_STATE == s_WAIT) begin
			assert(r_COUNTER == 0);
			assert(r_CEN == 0);
		end
		else if(r_CURRENT_STATE == s_ASSERT) begin
			assert(r_COUNTER == $past(r_COUNTER) +1);
			assert(r_CEN == 1);
		end
		else if( r_CURRENT_STATE == s_DONE) begin
			assert(r_COUNTER == $past(r_COUNTER));
			assert(r_CEN == 0);
		end
	end
	else if (r_valid == 1'b1)
	begin
		assume(r_CURRENT_STATE == $past(r_CURRENT_STATE));
		assume($stable(r_COUNTER));
		assume($stable(r_CEN));
	end
end
`endif   
   
endmodule
