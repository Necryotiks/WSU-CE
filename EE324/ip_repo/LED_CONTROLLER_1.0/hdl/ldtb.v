`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2019 10:28:53 PM
// Design Name: 
// Module Name: ldtb
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


module ldtb(

    );
    //clock and reset_n signals
	reg aclk =1'b0;
	reg arstn = 1'b0;

	
	//Write Address channel (AW)
	reg [31:0] write_addr =32'd0;	//Master write address
	reg [2:0] write_prot = 3'd0;	//type of write(leave at 0)
	reg write_addr_valid = 1'b0;	//master indicating address is valid
	wire write_addr_ready;		//slave ready to receive address

	//Write Data Channel (W)
	reg [31:0] write_data = 32'd0;	//Master write data
	reg [3:0] write_strb = 4'd0;	//Master byte-wise write strobe
	reg write_data_valid = 1'b0;	//Master indicating write data is valid
	wire write_data_ready;		//slave ready to receive data

	//Write Response Channel (WR)
	reg write_resp_ready = 1'b0;	//Master ready to receive write response
	wire [1:0] write_resp;		//slave write response
	wire write_resp_valid;		//slave response valid
	
	//Read Address channel (AR)
	reg [31:0] read_addr = 32'd0;	//Master read address
	reg [2:0] read_prot =3'd0;	//type of read(leave at 0)
	reg read_addr_valid = 1'b0;	//Master indicating address is valid
	wire read_addr_ready;		//slave ready to receive address

	//Read Data Channel (R)
	reg read_data_ready = 1'b0;	//Master indicating ready to receive data
	wire [31:0] read_data;		//slave read data
	wire [1:0] read_resp;		//slave read response
	wire read_data_valid;		//slave indicating data in channel is valid

	//LED output of the IPcore
	wire [3:0] LED; 
	

	//Instantiation of LED IP
	LED_CONTROLLER_v1_0_S00_AXI # (
		.C_S_AXI_DATA_WIDTH(32),
		.C_S_AXI_ADDR_WIDTH(32)
	) uut (
		.o_LED(LED),
		.s_axi_aclk(aclk),
		.s_axi_aresetn(arstn),

		.s_axi_awaddr(write_addr),
		.s_axi_awprot(write_prot),
		.s_axi_awvalid(write_addr_valid),
		.s_axi_awready(write_addr_ready),

		.s_axi_wdata(write_data),
		.s_axi_wstrb(write_strb),
		.s_axi_wvalid(write_data_valid),
		.s_axi_wready(write_data_ready),

		.s_axi_bresp(write_resp),
		.s_axi_bvalid(write_resp_valid),
		.s_axi_bready(write_resp_ready),

		.s_axi_araddr(read_addr),
		.s_axi_arprot(read_prot),
		.s_axi_arvalid(read_addr_valid),
		.s_axi_arready(read_addr_ready),

		.s_axi_rdata(read_data),
		.s_axi_rresp(read_resp),
		.s_axi_rvalid(read_data_valid),
		.s_axi_rready(read_data_ready)
	);
	
endmodule
