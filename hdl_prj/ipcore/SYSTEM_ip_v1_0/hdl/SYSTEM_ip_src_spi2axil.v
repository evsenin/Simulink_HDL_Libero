// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_src_spi2axil.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_src_spi2axil
// Source Path: tb_SYSTEM/SYSTEM/spi2axil
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_src_spi2axil
          (clk,
           reset_x,
           axi_rd_s2m_rd_aready,
           axi_rd_s2m_rd_dvalid,
           axi_rd_data,
           nCS,
           SCK,
           MOSI,
           axi_wr_s2m_wr_ready,
           axi_wr_s2m_wr_complete,
           axi_wr_m2s_wr_addr,
           axi_wr_m2s_wr_len,
           axi_wr_m2s_wr_valid,
           axi_wr_data,
           MISO,
           ENB_MISO,
           EXT_RST_N,
           axi_rd_m2s_rd_addr,
           axi_rd_m2s_rd_len,
           axi_rd_m2s_rd_avalid);


  input   clk;
  input   reset_x;
  input   axi_rd_s2m_rd_aready;
  input   axi_rd_s2m_rd_dvalid;
  input   [31:0] axi_rd_data;  // uint32
  input   nCS;
  input   SCK;
  input   MOSI;
  input   axi_wr_s2m_wr_ready;
  input   axi_wr_s2m_wr_complete;
  output  [31:0] axi_wr_m2s_wr_addr;  // uint32
  output  [7:0] axi_wr_m2s_wr_len;  // uint8
  output  axi_wr_m2s_wr_valid;
  output  [31:0] axi_wr_data;  // uint32
  output  MISO;
  output  ENB_MISO;
  output  EXT_RST_N;
  output  [31:0] axi_rd_m2s_rd_addr;  // uint32
  output  [7:0] axi_rd_m2s_rd_len;  // uint8
  output  axi_rd_m2s_rd_avalid;


  wire rd_aready;
  wire wr_ready;
  reg  nCS_REG_out1;
  reg  MOSI_REG_out1;
  reg  SCK_REG_out1;
  wire rd_dvalid;
  reg [31:0] rdata;  // uint32
  wire [31:0] Constant_out1;  // uint32
  wire MISO_1;
  wire wvalid;
  wire rvalid;
  wire [31:0] wdata;  // uint32
  wire [31:0] waddr;  // uint32
  wire [31:0] raddr;  // uint32
  wire [7:0] cbitdeadOutdeadOut;  // uint8
  wire [7:0] cworddeadOutdeadOut;  // uint8
  wire [31:0] drecvddeadOutdeadOut;  // uint32
  wire [31:0] odata;  // uint32
  reg  Delay2_out1;
  reg [31:0] Delay_out1;  // uint32
  reg [31:0] Delay1_out1;  // uint32
  reg  Delay4_out1;
  reg [31:0] Delay3_out1;  // uint32
  wire [31:0] rd_addr;  // uint32
  wire [7:0] rd_len;  // uint8
  wire rd_avalid;
  wire [31:0] wr_addr;  // uint32
  wire wr_valid;
  wire [7:0] wr_len;  // uint8
  wire [31:0] wr_data;  // uint32
  reg  MISO_REG_out1;
  wire NOT1_out1;
  reg  ENB_MISO_REG_out1;
  wire Extract_Bits_out1;  // ufix1_E31
  wire Extract_Bits_out1_is_not0;
  wire NOT_out1;


  assign rd_aready = axi_rd_s2m_rd_aready;
  assign wr_ready = axi_wr_s2m_wr_ready;
  always @(posedge clk or posedge reset_x)
    begin : nCS_REG_process
      if (reset_x == 1'b1) begin
        nCS_REG_out1 <= 1'b0;
      end
      else begin
        nCS_REG_out1 <= nCS;
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : MOSI_REG_process
      if (reset_x == 1'b1) begin
        MOSI_REG_out1 <= 1'b0;
      end
      else begin
        MOSI_REG_out1 <= MOSI;
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : SCK_REG_process
      if (reset_x == 1'b1) begin
        SCK_REG_out1 <= 1'b0;
      end
      else begin
        SCK_REG_out1 <= SCK;
      end
    end


  assign rd_dvalid = axi_rd_s2m_rd_dvalid;

  always @(posedge clk or posedge reset_x)
    begin : RDATA_REG_process
      if (reset_x == 1'b1) begin
        rdata <= 32'b00000000000000000000000000000000;
      end
      else begin
        if (rd_dvalid) begin
          rdata <= axi_rd_data;
        end
      end
    end


  assign Constant_out1 = 32'b10001010101111001101111011110001;


  SYSTEM_ip_src_spi_slave_block u_spi_slave (.clk(clk),
                                             .reset_x(reset_x),
                                             .nCS(nCS_REG_out1),
                                             .MOSI(MOSI_REG_out1),
                                             .SCK(SCK_REG_out1),
                                             .rdata(rdata),  // uint32
                                             .tdata(Constant_out1),  // uint32
                                             .MISO(MISO_1),
                                             .wvalid(wvalid),
                                             .rvalid(rvalid),
                                             .wdata(wdata),  // uint32
                                             .waddr(waddr),  // uint32
                                             .raddr(raddr),  // uint32
                                             .cbit(cbitdeadOutdeadOut),  // uint8
                                             .cword(cworddeadOutdeadOut),  // uint8
                                             .drecvd(drecvddeadOutdeadOut),  // uint32
                                             .odata(odata)  // uint32
                                             );
  always @(posedge clk or posedge reset_x)
    begin : Delay2_process
      if (reset_x == 1'b1) begin
        Delay2_out1 <= 1'b0;
      end
      else begin
        Delay2_out1 <= wvalid;
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : Delay_process
      if (reset_x == 1'b1) begin
        Delay_out1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        Delay_out1 <= wdata;
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : Delay1_process
      if (reset_x == 1'b1) begin
        Delay1_out1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        Delay1_out1 <= waddr;
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : Delay4_process
      if (reset_x == 1'b1) begin
        Delay4_out1 <= 1'b0;
      end
      else begin
        Delay4_out1 <= rvalid;
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : Delay3_process
      if (reset_x == 1'b1) begin
        Delay3_out1 <= 32'b00000000000000000000000000000000;
      end
      else begin
        Delay3_out1 <= raddr;
      end
    end


  SYSTEM_ip_src_AXI4LiteMaster u_AXI4LiteMaster (.clk(clk),
                                                 .reset_x(reset_x),
                                                 .rd_aready(rd_aready),
                                                 .rd_dvalid(axi_rd_s2m_rd_dvalid),
                                                 .wr_ready(wr_ready),
                                                 .wvalid(Delay2_out1),
                                                 .wdata(Delay_out1),  // uint32
                                                 .waddr(Delay1_out1),  // uint32
                                                 .rvalid(Delay4_out1),
                                                 .raddr(Delay3_out1),  // uint32
                                                 .rd_addr(rd_addr),  // uint32
                                                 .rd_len(rd_len),  // uint8
                                                 .rd_avalid(rd_avalid),
                                                 .wr_addr(wr_addr),  // uint32
                                                 .wr_valid(wr_valid),
                                                 .wr_len(wr_len),  // uint8
                                                 .wr_data(wr_data)  // uint32
                                                 );
  assign axi_wr_m2s_wr_addr = wr_addr;

  assign axi_wr_m2s_wr_len = wr_len;

  assign axi_wr_m2s_wr_valid = wr_valid;

  assign axi_wr_data = wr_data;

  always @(posedge clk or posedge reset_x)
    begin : MISO_REG_process
      if (reset_x == 1'b1) begin
        MISO_REG_out1 <= 1'b0;
      end
      else begin
        MISO_REG_out1 <= MISO_1;
      end
    end


  assign MISO = MISO_REG_out1;

  assign NOT1_out1 =  ~ nCS_REG_out1;


  always @(posedge clk or posedge reset_x)
    begin : ENB_MISO_REG_process
      if (reset_x == 1'b1) begin
        ENB_MISO_REG_out1 <= 1'b0;
      end
      else begin
        ENB_MISO_REG_out1 <= NOT1_out1;
      end
    end


  assign ENB_MISO = ENB_MISO_REG_out1;

  assign Extract_Bits_out1 = odata[31];


  assign Extract_Bits_out1_is_not0 = Extract_Bits_out1 != 1'b0;



  assign NOT_out1 =  ~ Extract_Bits_out1_is_not0;


  assign EXT_RST_N = NOT_out1;

  assign axi_rd_m2s_rd_addr = rd_addr;

  assign axi_rd_m2s_rd_len = rd_len;

  assign axi_rd_m2s_rd_avalid = rd_avalid;

endmodule  // SYSTEM_ip_src_spi2axil

