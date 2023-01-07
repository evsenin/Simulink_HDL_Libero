// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_CameraIO\CameraIO_ip_src_i2c_slave_serializer.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CameraIO_ip_src_i2c_slave_serializer
// Source Path: tb_CameraIO/CameraIO/TCA6424A/i2c_slave_serializer
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CameraIO_ip_src_i2c_slave_serializer
          (clk,
           reset_x,
           scl,
           sdaIn,
           dataIn,
           I2C_ADDRESS,
           sdaOut,
           dataOut,
           regAddr,
           writeEn);


  input   clk;
  input   reset_x;
  input   scl;  // ufix1
  input   sdaIn;  // ufix1
  input   [7:0] dataIn;  // uint8
  input   [6:0] I2C_ADDRESS;  // ufix7
  output  sdaOut;  // ufix1
  output  [7:0] dataOut;  // uint8
  output  [7:0] regAddr;  // uint8
  output  writeEn;  // ufix1


  wire CONST_u1b_1_out1;  // ufix1
  wire Eq_relop1;
  reg [9:0] sdaDelayed_reg_out1;  // ufix10
  wire [8:0] Bit_Slice_1_out1;  // ufix9
  wire [9:0] Concat_1_out1;  // ufix10
  wire Bit_Slice_3_out1;  // ufix1
  wire CONST_u1b_0_out1;  // ufix1
  wire Eq_1_relop1;
  wire Logical_AND_1_out1;  // ufix1
  wire Bit_Slice_4_out1;  // ufix1
  wire Eq_2_relop1;
  wire Logical_AND_out1;  // ufix1
  wire Switch_out1;  // ufix1
  reg  startEdgeDet_reg_out1;  // ufix1
  wire [3:0] CONST_u4b_0001_out1;  // ufix4
  wire [1:0] CONST_u2b_00_out1;  // ufix2
  reg [24:0] sclDelayed_reg_out1;  // ufix25
  wire [23:0] Bit_Slice_out1;  // ufix24
  wire [24:0] Concat_out1;  // ufix25
  wire Bit_Slice_2_out1;  // ufix1
  wire RelEQ_191_out1;
  wire RelEQ_193_out1;
  wire Eq_11_relop1;
  wire RelEQ197_out1;
  wire Bit_Slice_5_out1;  // ufix1
  wire Eq_5_relop1;
  wire Bit_Slice_6_out1;  // ufix1
  wire Eq_6_relop1;
  wire Logical_AND_2_out1;  // ufix1
  wire Bit_Slice_7_out1;  // ufix1
  wire Eq_7_relop1;
  wire Bit_Slice_8_out1;  // ufix1
  wire Eq_8_relop1;
  wire Logical_AND_3_out1;  // ufix1
  wire [1:0] CONST_u2b_01_out1;  // ufix2
  wire [1:0] CONST_u2b_10_out1;  // ufix2
  wire RelEQ_232_out1;
  wire [2:0] CONST_u3b_000_out1;  // ufix3
  wire [2:0] CONST_u3b_001_out1;  // ufix3
  wire [2:0] dtc_out1;  // ufix3
  wire [2:0] dtc2_out1;  // ufix3
  wire [2:0] dtc1_out1;  // ufix3
  wire RelEQ_273_out1;
  wire [2:0] dtc3_out1;  // ufix3
  wire [7:0] CONST_u8b_00_out1;  // uint8
  wire RelEQ_362_out1;
  wire [1:0] CONST_u2b_11_out1;  // ufix2
  wire [3:0] CONST_u4b_1000_out1;  // ufix4
  wire [3:0] CONST_u4b_0010_out1;  // ufix4
  wire RelEQ_149_out1;
  wire [3:0] CONST_u4b_0011_out1;  // ufix4
  wire RelEQ_165_out1;
  wire [3:0] CONST_u4b_0100_out1;  // ufix4
  wire [3:0] CONST_u4b_0101_out1;  // ufix4
  wire RelEQ_182_out1;
  wire [3:0] CONST_u4b_0110_out1;  // ufix4
  wire [3:0] CONST_u4b_1011_out1;  // ufix4
  wire [3:0] CONST_u4b_1111_out1;  // ufix4
  wire [3:0] CONST_u4b_0111_out1;  // ufix4
  wire [3:0] CONST_u4b_1110_out1;  // ufix4
  wire RelEQ_357_out1;
  wire [3:0] CONST_u4b_1001_out1;  // ufix4
  wire [3:0] CONST_u4b_1010_out1;  // ufix4
  wire RelEQ_372_out1;
  wire RelEQ_382_out1;
  wire [3:0] CONST_u4b_1100_out1;  // ufix4
  wire [3:0] CONST_u4b_1101_out1;  // ufix4
  wire [3:0] CONST_u4b_0000_out1;  // ufix4
  reg [3:0] CurrState_SISt_reg_out1;  // ufix4
  wire [3:0] Switch_46_out1;  // ufix4
  wire [3:0] Switch_45_out1;  // ufix4
  wire [3:0] Switch_44_out1;  // ufix4
  wire [3:0] Switch_43_out1;  // ufix4
  wire RelEQ_287_out1;
  wire [3:0] Switch_42_out1;  // ufix4
  wire [3:0] Switch_41_out1;  // ufix4
  wire [3:0] Switch_40_out1;  // ufix4
  wire Logical_AND_4_out1;  // ufix1
  wire [3:0] Switch_39_out1;  // ufix4
  wire [3:0] Switch_38_out1;  // ufix4
  wire [3:0] Switch_37_out1;  // ufix4
  wire RelEQ_171_out1;
  wire [3:0] Switch_36_out1;  // ufix4
  wire [3:0] Switch_35_out1;  // ufix4
  wire [3:0] Switch_34_out1;  // ufix4
  reg [7:0] rxData_reg_out1;  // uint8
  wire Bit_Slice_10_out1;  // ufix1
  wire RelEQ_297_out1;
  wire [1:0] Switch_11_out1;  // ufix2
  reg [1:0] startStopDetState_reg_out1;  // ufix2
  wire Eq_18_relop1;
  wire [6:0] Bit_Slice_13_out1;  // ufix7
  wire [7:0] Concat_4_out1;  // uint8
  wire [7:0] Switch_18_out1;  // uint8
  wire [6:0] Bit_Slice_12_out1;  // ufix7
  wire [7:0] Concat_3_out1;  // uint8
  wire [7:0] Switch_17_out1;  // uint8
  wire [7:0] MultiPortSwitch_5_out1;  // uint8
  wire [7:0] MultiPortSwitch_6_out1;  // uint8
  wire [7:0] Switch_16_out1;  // uint8
  wire [7:0] Switch_15_out1;  // uint8
  wire RelEQ_127_out1;
  wire [7:0] Switch_14_out1;  // uint8
  wire [7:0] MultiPortSwitch_4_out1;  // uint8
  wire [7:0] Switch_57_out1;  // uint8
  wire [6:0] Bit_Slice_9_out1;  // ufix7
  wire Eq_17_relop1;
  wire Logical_AND_6_out1;  // ufix1
  reg [1:0] streamSt_reg_out1;  // ufix2
  wire [1:0] Switch_10_out1;  // ufix2
  wire [1:0] MultiPortSwitch_2_out1;  // ufix2
  reg [2:0] bitCnt_reg_out1;  // ufix3
  wire [2:0] Add_3_out1;  // ufix3
  wire [2:0] Switch_31_out1;  // ufix3
  wire [2:0] Switch_30_out1;  // ufix3
  wire [2:0] Add_1_out1;  // ufix3
  wire [2:0] MultiPortSwitch_14_out1;  // ufix3
  wire [2:0] Add_2_out1;  // ufix3
  wire [2:0] MultiPortSwitch_15_out1;  // ufix3
  wire [2:0] Switch_29_out1;  // ufix3
  wire [2:0] Switch_28_out1;  // ufix3
  wire [2:0] Add_out1;  // ufix3
  wire [2:0] Switch_27_out1;  // ufix3
  wire [2:0] Switch_26_out1;  // ufix3
  wire [2:0] MultiPortSwitch_13_out1;  // ufix3
  wire [2:0] Switch_58_out1;  // ufix3
  wire [1:0] Switch_9_out1;  // ufix2
  wire [1:0] MultiPortSwitch_1_out1;  // ufix2
  wire [1:0] Switch_8_out1;  // ufix2
  wire Eq_14_relop1;
  wire Eq_13_relop1;
  wire Logical_AND_5_out1;  // ufix1
  wire [1:0] Switch_4_out1;  // ufix2
  wire [1:0] Switch_3_out1;  // ufix2
  wire [1:0] Switch_2_out1;  // ufix2
  reg  clearStartStopDet_reg_out1;  // ufix1
  wire Switch_32_out1;  // ufix1
  wire MultiPortSwitch_16_out1;  // ufix1
  wire Switch_54_out1;  // ufix1
  wire RelEQ191_out1;
  wire [1:0] Switch_1_out1;  // ufix2
  wire Eq_12_relop1;
  wire Logical_OR_out1;  // ufix1
  wire [1:0] Switch_7_out1;  // ufix2
  wire [1:0] Switch_6_out1;  // ufix2
  wire [1:0] Switch_5_out1;  // ufix2
  wire [1:0] MultiPortSwitch_out1;  // ufix2
  wire [1:0] Switch_55_out1;  // ufix2
  wire [3:0] Switch_33_out1;  // ufix4
  wire [3:0] MultiPortSwitch_17_out1;  // ufix4
  wire [3:0] Switch_50_out1;  // ufix4
  reg [7:0] txData_reg_out1;  // uint8
  wire [6:0] Bit_Slice_11_out1;  // ufix7
  wire [7:0] Concat_2_out1;  // uint8
  wire [7:0] Switch_13_out1;  // uint8
  wire [7:0] Switch_12_out1;  // uint8
  wire [7:0] MultiPortSwitch_3_out1;  // uint8
  wire [7:0] Switch_56_out1;  // uint8
  wire Bit_Slice_14_out1;  // ufix1
  wire Switch_22_out1;  // ufix1
  wire MultiPortSwitch_8_out1;  // ufix1
  reg  sdaOut_1_reg_out1;  // ufix1
  wire Switch_23_out1;  // ufix1
  wire Switch_21_out1;  // ufix1
  wire Switch_20_out1;  // ufix1
  wire Switch_19_out1;  // ufix1
  wire MultiPortSwitch_7_out1;  // ufix1
  wire Switch_51_out1;  // ufix1
  reg [7:0] dataOut_1_reg_out1;  // uint8
  wire [7:0] MultiPortSwitch_12_out1;  // uint8
  wire [7:0] Switch_25_out1;  // uint8
  wire [7:0] MultiPortSwitch_11_out1;  // uint8
  wire [7:0] Switch_53_out1;  // uint8
  wire [7:0] dtc4_out1;  // uint8
  reg  writeEn_1_reg_out1;  // ufix1
  wire MultiPortSwitch_10_out1;  // ufix1
  wire Switch_24_out1;  // ufix1
  wire MultiPortSwitch_9_out1;  // ufix1
  wire Switch_52_out1;  // ufix1
  wire RelEQ_387_out1;
  wire [7:0] dtc5_out1;  // uint8
  reg [7:0] regAddr_1_reg_out1;  // uint8
  wire [7:0] Add_5_out1;  // uint8
  wire [7:0] Switch_49_out1;  // uint8
  wire [7:0] MultiPortSwitch_19_out1;  // uint8
  wire [7:0] Switch_48_out1;  // uint8
  wire [7:0] Add_4_out1;  // uint8
  wire [7:0] Switch_47_out1;  // uint8
  wire [7:0] MultiPortSwitch_18_out1;  // uint8
  wire [7:0] Switch_59_out1;  // uint8


  assign CONST_u1b_1_out1 = 1'b1;


  assign Eq_relop1 = scl == CONST_u1b_1_out1;


  assign Bit_Slice_1_out1 = sdaDelayed_reg_out1[8:0];


  assign Concat_1_out1 = {Bit_Slice_1_out1, sdaIn};


  always @(posedge clk or posedge reset_x)
    begin : sdaDelayed_reg_process
      if (reset_x == 1'b1) begin
        sdaDelayed_reg_out1 <= 10'b0000000000;
      end
      else begin
        sdaDelayed_reg_out1 <= Concat_1_out1;
      end
    end


  assign Bit_Slice_3_out1 = sdaDelayed_reg_out1[8];


  assign CONST_u1b_0_out1 = 1'b0;


  assign Eq_1_relop1 = Bit_Slice_3_out1 == CONST_u1b_0_out1;


  assign Logical_AND_1_out1 = Eq_relop1 & Eq_1_relop1;


  assign Bit_Slice_4_out1 = sdaDelayed_reg_out1[9];


  assign Eq_2_relop1 = Bit_Slice_4_out1 == CONST_u1b_1_out1;


  assign Logical_AND_out1 = Logical_AND_1_out1 & Eq_2_relop1;


  assign Switch_out1 = (Logical_AND_out1 == 1'b0 ? CONST_u1b_0_out1 :
              CONST_u1b_1_out1);


  always @(posedge clk or posedge reset_x)
    begin : startEdgeDet_reg_process
      if (reset_x == 1'b1) begin
        startEdgeDet_reg_out1 <= 1'b0;
      end
      else begin
        startEdgeDet_reg_out1 <= Switch_out1;
      end
    end


  assign CONST_u4b_0001_out1 = 4'b0001;


  assign CONST_u2b_00_out1 = 2'b00;


  assign Bit_Slice_out1 = sclDelayed_reg_out1[23:0];


  assign Concat_out1 = {Bit_Slice_out1, scl};


  always @(posedge clk or posedge reset_x)
    begin : sclDelayed_reg_process
      if (reset_x == 1'b1) begin
        sclDelayed_reg_out1 <= 25'b0000000000000000000000000;
      end
      else begin
        sclDelayed_reg_out1 <= Concat_out1;
      end
    end


  assign Bit_Slice_2_out1 = sclDelayed_reg_out1[24];


  assign RelEQ_191_out1 = Bit_Slice_2_out1 == 1'b1;


  assign RelEQ_193_out1 = sdaIn == 1'b1;


  assign Eq_11_relop1 = Bit_Slice_2_out1 == CONST_u1b_0_out1;


  assign RelEQ197_out1 = scl == 1'b1;


  assign Bit_Slice_5_out1 = sdaDelayed_reg_out1[8];


  assign Eq_5_relop1 = Bit_Slice_5_out1 == CONST_u1b_1_out1;


  assign Bit_Slice_6_out1 = sdaDelayed_reg_out1[9];


  assign Eq_6_relop1 = Bit_Slice_6_out1 == CONST_u1b_0_out1;


  assign Logical_AND_2_out1 = Eq_5_relop1 & Eq_6_relop1;


  assign Bit_Slice_7_out1 = sdaDelayed_reg_out1[8];


  assign Eq_7_relop1 = Bit_Slice_7_out1 == CONST_u1b_0_out1;


  assign Bit_Slice_8_out1 = sdaDelayed_reg_out1[9];


  assign Eq_8_relop1 = Bit_Slice_8_out1 == CONST_u1b_1_out1;


  assign Logical_AND_3_out1 = Eq_7_relop1 & Eq_8_relop1;


  assign CONST_u2b_01_out1 = 2'b01;


  assign CONST_u2b_10_out1 = 2'b10;


  assign RelEQ_232_out1 = Bit_Slice_2_out1 == 1'b0;


  assign CONST_u3b_000_out1 = 3'b000;


  assign CONST_u3b_001_out1 = 3'b001;


  assign dtc_out1 = {2'b0, CONST_u1b_1_out1};


  assign dtc2_out1 = {2'b0, CONST_u1b_1_out1};


  assign dtc1_out1 = {2'b0, CONST_u1b_1_out1};


  assign RelEQ_273_out1 = Bit_Slice_2_out1 == 1'b1;


  assign dtc3_out1 = {2'b0, CONST_u1b_1_out1};


  assign CONST_u8b_00_out1 = 8'b00000000;


  assign RelEQ_362_out1 = Bit_Slice_2_out1 == 1'b1;


  assign CONST_u2b_11_out1 = 2'b11;


  assign CONST_u4b_1000_out1 = 4'b1000;


  assign CONST_u4b_0010_out1 = 4'b0010;


  assign RelEQ_149_out1 = Bit_Slice_2_out1 == 1'b0;


  assign CONST_u4b_0011_out1 = 4'b0011;


  assign RelEQ_165_out1 = Bit_Slice_2_out1 == 1'b1;


  assign CONST_u4b_0100_out1 = 4'b0100;


  assign CONST_u4b_0101_out1 = 4'b0101;


  assign RelEQ_182_out1 = Bit_Slice_2_out1 == 1'b0;


  assign CONST_u4b_0110_out1 = 4'b0110;


  assign CONST_u4b_1011_out1 = 4'b1011;


  assign CONST_u4b_1111_out1 = 4'b1111;


  assign CONST_u4b_0111_out1 = 4'b0111;


  assign CONST_u4b_1110_out1 = 4'b1110;


  assign RelEQ_357_out1 = Bit_Slice_2_out1 == 1'b0;


  assign CONST_u4b_1001_out1 = 4'b1001;


  assign CONST_u4b_1010_out1 = 4'b1010;


  assign RelEQ_372_out1 = Bit_Slice_2_out1 == 1'b0;


  assign RelEQ_382_out1 = Bit_Slice_2_out1 == 1'b1;


  assign CONST_u4b_1100_out1 = 4'b1100;


  assign CONST_u4b_1101_out1 = 4'b1101;


  assign CONST_u4b_0000_out1 = 4'b0000;


  assign Switch_46_out1 = (RelEQ_382_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_1100_out1);


  assign Switch_45_out1 = (RelEQ_372_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_0001_out1);


  assign Switch_44_out1 = (RelEQ_362_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_1010_out1);


  assign Switch_43_out1 = (RelEQ_357_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_1001_out1);


  assign Switch_42_out1 = (RelEQ_287_out1 == 1'b0 ? CONST_u4b_1011_out1 :
              CONST_u4b_1110_out1);


  assign Switch_41_out1 = (RelEQ_273_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_0111_out1);


  assign Switch_40_out1 = (RelEQ_232_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_1011_out1);


  assign Switch_39_out1 = (Logical_AND_4_out1 == 1'b0 ? Switch_40_out1 :
              CONST_u4b_1111_out1);


  assign Switch_38_out1 = (RelEQ_191_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_0001_out1);


  assign Switch_37_out1 = (RelEQ_182_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_0110_out1);


  assign Switch_36_out1 = (RelEQ_171_out1 == 1'b0 ? CONST_u4b_0010_out1 :
              CONST_u4b_0101_out1);


  assign Switch_35_out1 = (RelEQ_165_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_0100_out1);


  assign Switch_34_out1 = (RelEQ_149_out1 == 1'b0 ? CurrState_SISt_reg_out1 :
              CONST_u4b_0011_out1);


  assign Bit_Slice_10_out1 = rxData_reg_out1[0];


  assign RelEQ_297_out1 = Bit_Slice_10_out1 == 1'b1;


  assign Switch_11_out1 = (RelEQ_297_out1 == 1'b0 ? CONST_u2b_10_out1 :
              CONST_u2b_01_out1);


  assign Eq_18_relop1 = startStopDetState_reg_out1 == CONST_u2b_01_out1;


  assign Bit_Slice_13_out1 = rxData_reg_out1[6:0];


  assign Concat_4_out1 = {Bit_Slice_13_out1, sdaIn};


  assign Switch_18_out1 = (RelEQ_362_out1 == 1'b0 ? rxData_reg_out1 :
              Concat_4_out1);


  assign Bit_Slice_12_out1 = rxData_reg_out1[6:0];


  assign Concat_3_out1 = {Bit_Slice_12_out1, sdaIn};


  assign Switch_17_out1 = (RelEQ_273_out1 == 1'b0 ? rxData_reg_out1 :
              Concat_3_out1);


  assign MultiPortSwitch_5_out1 = (startStopDetState_reg_out1 == 2'b00 ? rxData_reg_out1 :
              (startStopDetState_reg_out1 == 2'b01 ? CONST_u8b_00_out1 :
              rxData_reg_out1));


  assign MultiPortSwitch_6_out1 = (startStopDetState_reg_out1 == 2'b00 ? rxData_reg_out1 :
              (startStopDetState_reg_out1 == 2'b01 ? CONST_u8b_00_out1 :
              rxData_reg_out1));


  assign Switch_16_out1 = (RelEQ_232_out1 == 1'b0 ? rxData_reg_out1 :
              MultiPortSwitch_6_out1);


  assign Switch_15_out1 = (Logical_AND_4_out1 == 1'b0 ? Switch_16_out1 :
              MultiPortSwitch_5_out1);


  assign Switch_14_out1 = (RelEQ_127_out1 == 1'b0 ? CONST_u8b_00_out1 :
              rxData_reg_out1);


  assign MultiPortSwitch_4_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u8b_00_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? Switch_14_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? Switch_15_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? Switch_17_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1010 ? rxData_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1011 ? Switch_18_out1 :
              rxData_reg_out1))))))))))));


  assign Switch_57_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_4_out1 :
              CONST_u8b_00_out1);


  always @(posedge clk or posedge reset_x)
    begin : rxData_reg_process
      if (reset_x == 1'b1) begin
        rxData_reg_out1 <= 8'b00000000;
      end
      else begin
        rxData_reg_out1 <= Switch_57_out1;
      end
    end


  assign Bit_Slice_9_out1 = rxData_reg_out1[7:1];


  assign Eq_17_relop1 = Bit_Slice_9_out1 == I2C_ADDRESS;


  assign Logical_AND_6_out1 = Eq_17_relop1 & Eq_18_relop1;


  assign Switch_10_out1 = (Logical_AND_6_out1 == 1'b0 ? streamSt_reg_out1 :
              Switch_11_out1);


  assign MultiPortSwitch_2_out1 = (streamSt_reg_out1 == 2'b00 ? Switch_10_out1 :
              (streamSt_reg_out1 == 2'b01 ? streamSt_reg_out1 :
              (streamSt_reg_out1 == 2'b10 ? CONST_u2b_11_out1 :
              streamSt_reg_out1)));


  assign Add_3_out1 = bitCnt_reg_out1 + dtc3_out1;


  assign Switch_31_out1 = (RelEQ_287_out1 == 1'b0 ? Add_3_out1 :
              bitCnt_reg_out1);


  assign Switch_30_out1 = (RelEQ_273_out1 == 1'b0 ? bitCnt_reg_out1 :
              CONST_u3b_000_out1);


  assign Add_1_out1 = bitCnt_reg_out1 + dtc1_out1;


  assign MultiPortSwitch_14_out1 = (startStopDetState_reg_out1 == 2'b00 ? Add_1_out1 :
              bitCnt_reg_out1);


  assign Add_2_out1 = bitCnt_reg_out1 + dtc2_out1;


  assign MultiPortSwitch_15_out1 = (startStopDetState_reg_out1 == 2'b00 ? Add_2_out1 :
              bitCnt_reg_out1);


  assign Switch_29_out1 = (RelEQ_232_out1 == 1'b0 ? bitCnt_reg_out1 :
              MultiPortSwitch_15_out1);


  assign Switch_28_out1 = (Logical_AND_4_out1 == 1'b0 ? Switch_29_out1 :
              MultiPortSwitch_14_out1);


  assign Add_out1 = bitCnt_reg_out1 + dtc_out1;


  assign RelEQ_171_out1 = bitCnt_reg_out1 == 3'b000;


  assign Switch_27_out1 = (RelEQ_171_out1 == 1'b0 ? Add_out1 :
              bitCnt_reg_out1);


  assign Switch_26_out1 = (RelEQ_127_out1 == 1'b0 ? bitCnt_reg_out1 :
              CONST_u3b_001_out1);


  assign MultiPortSwitch_13_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u3b_000_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? Switch_26_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? bitCnt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? bitCnt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? Switch_27_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? bitCnt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? bitCnt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? Switch_28_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? Switch_30_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_31_out1 :
              bitCnt_reg_out1))))))))));


  assign Switch_58_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_13_out1 :
              CONST_u3b_000_out1);


  always @(posedge clk or posedge reset_x)
    begin : bitCnt_reg_process
      if (reset_x == 1'b1) begin
        bitCnt_reg_out1 <= 3'b000;
      end
      else begin
        bitCnt_reg_out1 <= Switch_58_out1;
      end
    end


  assign RelEQ_287_out1 = bitCnt_reg_out1 == 3'b111;


  assign Switch_9_out1 = (RelEQ_287_out1 == 1'b0 ? streamSt_reg_out1 :
              MultiPortSwitch_2_out1);


  assign MultiPortSwitch_1_out1 = (startStopDetState_reg_out1 == 2'b00 ? streamSt_reg_out1 :
              (startStopDetState_reg_out1 == 2'b01 ? CONST_u2b_00_out1 :
              streamSt_reg_out1));


  assign Switch_8_out1 = (RelEQ_232_out1 == 1'b0 ? streamSt_reg_out1 :
              MultiPortSwitch_1_out1);


  assign Eq_14_relop1 = startStopDetState_reg_out1 == CONST_u2b_00_out1;


  assign Eq_13_relop1 = streamSt_reg_out1 == CONST_u2b_00_out1;


  assign Logical_AND_5_out1 = Eq_13_relop1 & Eq_14_relop1;


  assign Switch_4_out1 = (Logical_AND_3_out1 == 1'b0 ? startStopDetState_reg_out1 :
              CONST_u2b_01_out1);


  assign Switch_3_out1 = (Logical_AND_2_out1 == 1'b0 ? Switch_4_out1 :
              CONST_u2b_10_out1);


  assign Switch_2_out1 = (RelEQ197_out1 == 1'b0 ? startStopDetState_reg_out1 :
              Switch_3_out1);


  assign Switch_32_out1 = (Logical_AND_4_out1 == 1'b0 ? clearStartStopDet_reg_out1 :
              CONST_u1b_1_out1);


  assign MultiPortSwitch_16_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u1b_0_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? Switch_32_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1010 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1011 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1100 ? clearStartStopDet_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1101 ? CONST_u1b_0_out1 :
              (CurrState_SISt_reg_out1 == 4'b1110 ? CONST_u1b_1_out1 :
              CONST_u1b_0_out1)))))))))))))));


  assign Switch_54_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_16_out1 :
              CONST_u1b_0_out1);


  always @(posedge clk or posedge reset_x)
    begin : clearStartStopDet_reg_process
      if (reset_x == 1'b1) begin
        clearStartStopDet_reg_out1 <= 1'b0;
      end
      else begin
        clearStartStopDet_reg_out1 <= Switch_54_out1;
      end
    end


  assign RelEQ191_out1 = clearStartStopDet_reg_out1 == 1'b1;


  assign Switch_1_out1 = (RelEQ191_out1 == 1'b0 ? Switch_2_out1 :
              CONST_u2b_00_out1);


  always @(posedge clk or posedge reset_x)
    begin : startStopDetState_reg_process
      if (reset_x == 1'b1) begin
        startStopDetState_reg_out1 <= 2'b00;
      end
      else begin
        startStopDetState_reg_out1 <= Switch_1_out1;
      end
    end


  assign Eq_12_relop1 = startStopDetState_reg_out1 == CONST_u2b_10_out1;


  assign Logical_OR_out1 = Eq_12_relop1 | Logical_AND_5_out1;


  assign Logical_AND_4_out1 = Eq_11_relop1 & Logical_OR_out1;


  assign Switch_7_out1 = (Logical_AND_4_out1 == 1'b0 ? Switch_8_out1 :
              CONST_u2b_00_out1);


  assign Switch_6_out1 = (RelEQ_193_out1 == 1'b0 ? streamSt_reg_out1 :
              CONST_u2b_00_out1);


  assign Switch_5_out1 = (RelEQ_191_out1 == 1'b0 ? streamSt_reg_out1 :
              Switch_6_out1);


  assign MultiPortSwitch_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u2b_00_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? streamSt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? streamSt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? streamSt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? streamSt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? streamSt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? Switch_5_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? Switch_7_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? streamSt_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_9_out1 :
              streamSt_reg_out1))))))))));


  assign Switch_55_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_out1 :
              CONST_u2b_00_out1);


  always @(posedge clk or posedge reset_x)
    begin : streamSt_reg_process
      if (reset_x == 1'b1) begin
        streamSt_reg_out1 <= 2'b00;
      end
      else begin
        streamSt_reg_out1 <= Switch_55_out1;
      end
    end


  assign RelEQ_127_out1 = streamSt_reg_out1 == 2'b01;


  assign Switch_33_out1 = (RelEQ_127_out1 == 1'b0 ? CONST_u4b_1000_out1 :
              CONST_u4b_0010_out1);


  assign MultiPortSwitch_17_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u4b_0001_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? Switch_33_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? Switch_34_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? Switch_35_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? Switch_36_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? Switch_37_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? Switch_38_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? Switch_39_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? Switch_41_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_42_out1 :
              (CurrState_SISt_reg_out1 == 4'b1010 ? Switch_43_out1 :
              (CurrState_SISt_reg_out1 == 4'b1011 ? Switch_44_out1 :
              (CurrState_SISt_reg_out1 == 4'b1100 ? Switch_45_out1 :
              (CurrState_SISt_reg_out1 == 4'b1101 ? Switch_46_out1 :
              (CurrState_SISt_reg_out1 == 4'b1110 ? CONST_u4b_1101_out1 :
              (CurrState_SISt_reg_out1 == 4'b1111 ? CONST_u4b_0001_out1 :
              CurrState_SISt_reg_out1))))))))))))))));


  assign Switch_50_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_17_out1 :
              CONST_u4b_0000_out1);


  always @(posedge clk or posedge reset_x)
    begin : CurrState_SISt_reg_process
      if (reset_x == 1'b1) begin
        CurrState_SISt_reg_out1 <= 4'b0000;
      end
      else begin
        CurrState_SISt_reg_out1 <= Switch_50_out1;
      end
    end


  assign Bit_Slice_11_out1 = txData_reg_out1[6:0];


  assign Concat_2_out1 = {Bit_Slice_11_out1, CONST_u1b_0_out1};


  assign Switch_13_out1 = (RelEQ_149_out1 == 1'b0 ? txData_reg_out1 :
              Concat_2_out1);


  assign Switch_12_out1 = (RelEQ_127_out1 == 1'b0 ? txData_reg_out1 :
              dataIn);


  assign MultiPortSwitch_3_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u8b_00_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? Switch_12_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? Switch_13_out1 :
              txData_reg_out1)));


  assign Switch_56_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_3_out1 :
              CONST_u8b_00_out1);


  always @(posedge clk or posedge reset_x)
    begin : txData_reg_process
      if (reset_x == 1'b1) begin
        txData_reg_out1 <= 8'b00000000;
      end
      else begin
        txData_reg_out1 <= Switch_56_out1;
      end
    end


  assign Bit_Slice_14_out1 = txData_reg_out1[7];


  assign Switch_22_out1 = (Logical_AND_6_out1 == 1'b0 ? CONST_u1b_1_out1 :
              CONST_u1b_0_out1);


  assign MultiPortSwitch_8_out1 = (streamSt_reg_out1 == 2'b00 ? Switch_22_out1 :
              CONST_u1b_0_out1);


  assign Switch_23_out1 = (RelEQ_372_out1 == 1'b0 ? sdaOut_1_reg_out1 :
              CONST_u1b_1_out1);


  assign Switch_21_out1 = (RelEQ_287_out1 == 1'b0 ? sdaOut_1_reg_out1 :
              MultiPortSwitch_8_out1);


  assign Switch_20_out1 = (RelEQ_182_out1 == 1'b0 ? sdaOut_1_reg_out1 :
              CONST_u1b_1_out1);


  assign Switch_19_out1 = (RelEQ_149_out1 == 1'b0 ? sdaOut_1_reg_out1 :
              Bit_Slice_14_out1);


  assign MultiPortSwitch_7_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u1b_1_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? Switch_19_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? Switch_20_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_21_out1 :
              (CurrState_SISt_reg_out1 == 4'b1010 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1011 ? sdaOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1100 ? Switch_23_out1 :
              sdaOut_1_reg_out1)))))))))))));


  assign Switch_51_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_7_out1 :
              CONST_u1b_1_out1);


  always @(posedge clk or posedge reset_x)
    begin : sdaOut_1_reg_process
      if (reset_x == 1'b1) begin
        sdaOut_1_reg_out1 <= 1'b1;
      end
      else begin
        sdaOut_1_reg_out1 <= Switch_51_out1;
      end
    end


  assign sdaOut = sdaOut_1_reg_out1;

  assign MultiPortSwitch_12_out1 = (streamSt_reg_out1 == 2'b00 ? dataOut_1_reg_out1 :
              (streamSt_reg_out1 == 2'b01 ? dataOut_1_reg_out1 :
              (streamSt_reg_out1 == 2'b10 ? dataOut_1_reg_out1 :
              rxData_reg_out1)));


  assign Switch_25_out1 = (RelEQ_287_out1 == 1'b0 ? dataOut_1_reg_out1 :
              MultiPortSwitch_12_out1);


  assign MultiPortSwitch_11_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u8b_00_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? dataOut_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_25_out1 :
              dataOut_1_reg_out1))))))))));


  assign Switch_53_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_11_out1 :
              CONST_u8b_00_out1);


  always @(posedge clk or posedge reset_x)
    begin : dataOut_1_reg_process
      if (reset_x == 1'b1) begin
        dataOut_1_reg_out1 <= 8'b00000000;
      end
      else begin
        dataOut_1_reg_out1 <= Switch_53_out1;
      end
    end


  assign dataOut = dataOut_1_reg_out1;

  assign dtc4_out1 = {7'b0, CONST_u1b_1_out1};


  assign MultiPortSwitch_10_out1 = (streamSt_reg_out1 == 2'b00 ? writeEn_1_reg_out1 :
              (streamSt_reg_out1 == 2'b01 ? writeEn_1_reg_out1 :
              (streamSt_reg_out1 == 2'b10 ? writeEn_1_reg_out1 :
              CONST_u1b_1_out1)));


  assign Switch_24_out1 = (RelEQ_287_out1 == 1'b0 ? writeEn_1_reg_out1 :
              MultiPortSwitch_10_out1);


  assign MultiPortSwitch_9_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? CONST_u1b_0_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_24_out1 :
              (CurrState_SISt_reg_out1 == 4'b1010 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1011 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1100 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1101 ? writeEn_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1110 ? CONST_u1b_0_out1 :
              writeEn_1_reg_out1)))))))))))))));


  assign Switch_52_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_9_out1 :
              CONST_u1b_0_out1);


  always @(posedge clk or posedge reset_x)
    begin : writeEn_1_reg_process
      if (reset_x == 1'b1) begin
        writeEn_1_reg_out1 <= 1'b0;
      end
      else begin
        writeEn_1_reg_out1 <= Switch_52_out1;
      end
    end


  assign RelEQ_387_out1 = writeEn_1_reg_out1 == 1'b1;


  assign dtc5_out1 = {7'b0, CONST_u1b_1_out1};


  assign Add_5_out1 = regAddr_1_reg_out1 + dtc5_out1;


  assign Switch_49_out1 = (RelEQ_387_out1 == 1'b0 ? regAddr_1_reg_out1 :
              Add_5_out1);


  assign MultiPortSwitch_19_out1 = (streamSt_reg_out1 == 2'b00 ? regAddr_1_reg_out1 :
              (streamSt_reg_out1 == 2'b01 ? regAddr_1_reg_out1 :
              (streamSt_reg_out1 == 2'b10 ? rxData_reg_out1 :
              regAddr_1_reg_out1)));


  assign Switch_48_out1 = (RelEQ_287_out1 == 1'b0 ? regAddr_1_reg_out1 :
              MultiPortSwitch_19_out1);


  assign Add_4_out1 = regAddr_1_reg_out1 + dtc4_out1;


  assign Switch_47_out1 = (RelEQ_127_out1 == 1'b0 ? regAddr_1_reg_out1 :
              Add_4_out1);


  assign MultiPortSwitch_18_out1 = (CurrState_SISt_reg_out1 == 4'b0000 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0001 ? Switch_47_out1 :
              (CurrState_SISt_reg_out1 == 4'b0010 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0011 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0100 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0101 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0110 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b0111 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1000 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1001 ? Switch_48_out1 :
              (CurrState_SISt_reg_out1 == 4'b1010 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1011 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1100 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1101 ? regAddr_1_reg_out1 :
              (CurrState_SISt_reg_out1 == 4'b1110 ? Switch_49_out1 :
              regAddr_1_reg_out1)))))))))))))));


  assign Switch_59_out1 = (startEdgeDet_reg_out1 == 1'b0 ? MultiPortSwitch_18_out1 :
              regAddr_1_reg_out1);


  always @(posedge clk or posedge reset_x)
    begin : regAddr_1_reg_process
      if (reset_x == 1'b1) begin
        regAddr_1_reg_out1 <= 8'b00000000;
      end
      else begin
        regAddr_1_reg_out1 <= Switch_59_out1;
      end
    end


  assign regAddr = regAddr_1_reg_out1;

  assign writeEn = writeEn_1_reg_out1;

endmodule  // CameraIO_ip_src_i2c_slave_serializer
