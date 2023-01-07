// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_src_AXI4LiteMaster.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_src_AXI4LiteMaster
// Source Path: tb_SYSTEM/SYSTEM/spi2axil/AXI4LiteMaster
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_src_AXI4LiteMaster
          (clk,
           reset_x,
           rd_aready,
           rd_dvalid,
           wr_ready,
           wvalid,
           wdata,
           waddr,
           rvalid,
           raddr,
           rd_addr,
           rd_len,
           rd_avalid,
           wr_addr,
           wr_valid,
           wr_len,
           wr_data);

  // Default encoded enumeration values for type state_type_is_AXI4LiteMaster
  parameter state_type_is_AXI4LiteMaster_IN_IDLE = 3'd0, state_type_is_AXI4LiteMaster_IN_RD_AREADY = 3'd1, state_type_is_AXI4LiteMaster_IN_RD_AVALID = 3'd2, state_type_is_AXI4LiteMaster_IN_RD_DVALID = 3'd3, state_type_is_AXI4LiteMaster_IN_RESET = 3'd4, state_type_is_AXI4LiteMaster_IN_WR_READY = 3'd5, state_type_is_AXI4LiteMaster_IN_WR_VALID = 3'd6;

  input   clk;
  input   reset_x;
  input   rd_aready;
  input   rd_dvalid;
  input   wr_ready;
  input   wvalid;
  input   [31:0] wdata;  // uint32
  input   [31:0] waddr;  // uint32
  input   rvalid;
  input   [31:0] raddr;  // uint32
  output  [31:0] rd_addr;  // uint32
  output  [7:0] rd_len;  // uint8
  output  rd_avalid;
  output  [31:0] wr_addr;  // uint32
  output  wr_valid;
  output  [7:0] wr_len;  // uint8
  output  [31:0] wr_data;  // uint32


  reg [2:0] is_AXI4LiteMaster;  // uint8
  reg [31:0] rd_addr_reg;  // uint32
  reg [7:0] rd_len_reg;  // uint8
  reg  rd_avalid_reg;
  reg [31:0] wr_addr_reg;  // uint32
  reg  wr_valid_reg;
  reg [7:0] wr_len_reg;  // uint8
  reg [31:0] wr_data_reg;  // uint32
  reg [2:0] is_AXI4LiteMaster_next;  // enum type state_type_is_AXI4LiteMaster (7 enums)
  reg [31:0] rd_addr_reg_next;  // uint32
  reg [7:0] rd_len_reg_next;  // uint8
  reg  rd_avalid_reg_next;
  reg [31:0] wr_addr_reg_next;  // uint32
  reg  wr_valid_reg_next;
  reg [7:0] wr_len_reg_next;  // uint8
  reg [31:0] wr_data_reg_next;  // uint32


  always @(posedge clk or posedge reset_x)
    begin : AXI4LiteMaster_process
      if (reset_x == 1'b1) begin
        //Entry: SYSTEM/spi2axil/AXI4LiteMaster
        //Entry Internal: SYSTEM/spi2axil/AXI4LiteMaster
        //Transition
        is_AXI4LiteMaster <= state_type_is_AXI4LiteMaster_IN_RESET;
        //Entry 'RESET'
        rd_avalid_reg <= 1'b0;
        wr_valid_reg <= 1'b0;
        rd_addr_reg <= 32'd0;
        rd_len_reg <= 8'd1;
        wr_addr_reg <= 32'd0;
        wr_len_reg <= 8'd1;
        wr_data_reg <= 32'd0;
      end
      else begin
        is_AXI4LiteMaster <= is_AXI4LiteMaster_next;
        rd_addr_reg <= rd_addr_reg_next;
        rd_len_reg <= rd_len_reg_next;
        rd_avalid_reg <= rd_avalid_reg_next;
        wr_addr_reg <= wr_addr_reg_next;
        wr_valid_reg <= wr_valid_reg_next;
        wr_len_reg <= wr_len_reg_next;
        wr_data_reg <= wr_data_reg_next;
      end
    end

  always @(is_AXI4LiteMaster, raddr, rd_addr_reg, rd_aready, rd_avalid_reg, rd_dvalid,
       rd_len_reg, rvalid, waddr, wdata, wr_addr_reg, wr_data_reg, wr_len_reg,
       wr_ready, wr_valid_reg, wvalid) begin
    rd_addr_reg_next = rd_addr_reg;
    rd_len_reg_next = rd_len_reg;
    rd_avalid_reg_next = rd_avalid_reg;
    wr_addr_reg_next = wr_addr_reg;
    wr_valid_reg_next = wr_valid_reg;
    wr_len_reg_next = wr_len_reg;
    wr_data_reg_next = wr_data_reg;
    is_AXI4LiteMaster_next = is_AXI4LiteMaster;
    //Gateway: SYSTEM/spi2axil/AXI4LiteMaster
    //During: SYSTEM/spi2axil/AXI4LiteMaster
    case ( is_AXI4LiteMaster)
      state_type_is_AXI4LiteMaster_IN_IDLE :
        begin
          //During 'IDLE'
          if (wvalid) begin
            //Transition
            wr_addr_reg_next = waddr;
            wr_data_reg_next = wdata;
            is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_WR_READY;
            //Entry 'WR_READY'
          end
          else if (rvalid) begin
            //Transition
            rd_addr_reg_next = raddr;
            is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_RD_AREADY;
            //Entry 'RD_AREADY'
          end
        end
      state_type_is_AXI4LiteMaster_IN_RD_AREADY :
        begin
          //During 'RD_AREADY'
          if (rd_aready) begin
            //Transition
            is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_RD_AVALID;
            //Entry 'RD_AVALID'
            rd_avalid_reg_next = 1'b1;
          end
        end
      state_type_is_AXI4LiteMaster_IN_RD_AVALID :
        begin
          //During 'RD_AVALID'
          //Transition
          is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_RD_DVALID;
          //Entry 'RD_DVALID'
          rd_avalid_reg_next = 1'b0;
        end
      state_type_is_AXI4LiteMaster_IN_RD_DVALID :
        begin
          //During 'RD_DVALID'
          if (rd_dvalid) begin
            //Transition
            is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_IDLE;
            //Entry 'IDLE'
          end
          else begin
            rd_avalid_reg_next = 1'b0;
          end
        end
      state_type_is_AXI4LiteMaster_IN_RESET :
        begin
          //During 'RESET'
          //Transition
          is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_IDLE;
          //Entry 'IDLE'
        end
      state_type_is_AXI4LiteMaster_IN_WR_READY :
        begin
          //During 'WR_READY'
          if (wr_ready) begin
            //Transition
            is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_WR_VALID;
            //Entry 'WR_VALID'
            wr_valid_reg_next = 1'b1;
          end
        end
      default :
        begin
          //case IN_WR_VALID:
          //During 'WR_VALID'
          //Transition
          //Exit 'WR_VALID'
          wr_valid_reg_next = 1'b0;
          is_AXI4LiteMaster_next = state_type_is_AXI4LiteMaster_IN_IDLE;
          //Entry 'IDLE'
        end
    endcase
  end

  assign rd_addr = rd_addr_reg_next;
  assign rd_len = rd_len_reg_next;
  assign rd_avalid = rd_avalid_reg_next;
  assign wr_addr = wr_addr_reg_next;
  assign wr_valid = wr_valid_reg_next;
  assign wr_len = wr_len_reg_next;
  assign wr_data = wr_data_reg_next;


endmodule  // SYSTEM_ip_src_AXI4LiteMaster

