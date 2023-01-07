// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_src_Temperature_and_Voltage_Sensor.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_src_Temperature_and_Voltage_Sensor
// Source Path: tb_SYSTEM/SYSTEM/Temperature and Voltage Sensor
// Hierarchy Level: 1
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_src_Temperature_and_Voltage_Sensor
          (clk,
           reset_x,
           valid,
           chan,
           data,
           alpha1000mV,
           alpha1800mV,
           alpha2500mV,
           tempr);


  input   clk;
  input   reset_x;
  input   valid;
  input   [1:0] chan;  // ufix2
  input   signed [15:0] data;  // int16
  output  signed [31:0] alpha1000mV;  // int32
  output  signed [31:0] alpha1800mV;  // int32
  output  signed [31:0] alpha2500mV;  // int32
  output  signed [31:0] tempr;  // int32


  wire Compare_To_Constant_out1;
  wire Data_Type_Conversion2_out1;
  wire AND_out1;
  reg signed [15:0] Enabled_Resettable_Delay_bypass_delay;  // sfix16
  reg signed [15:0] Enabled_Resettable_Delay_reg;  // sfix16
  wire signed [15:0] Enabled_Resettable_Delay_out1;  // int16
  wire signed [15:0] acc3_out1;  // int16
  wire signed [15:0] Bit_Shift_out1;  // int16
  wire signed [31:0] Data_Type_Conversion3_out1;  // int32
  wire Compare_To_Constant1_out1;
  wire AND1_out1;
  reg signed [15:0] Enabled_Resettable_Delay1_bypass_delay;  // sfix16
  reg signed [15:0] Enabled_Resettable_Delay1_reg;  // sfix16
  wire signed [15:0] Enabled_Resettable_Delay1_out1;  // int16
  wire signed [15:0] acc2_out1;  // int16
  wire signed [15:0] Bit_Shift1_out1;  // int16
  wire signed [31:0] Data_Type_Conversion4_out1;  // int32
  wire Compare_To_Constant2_out1;
  wire AND2_out1;
  reg signed [15:0] Enabled_Resettable_Delay2_bypass_delay;  // sfix16
  reg signed [15:0] Enabled_Resettable_Delay2_reg;  // sfix16
  wire signed [15:0] Enabled_Resettable_Delay2_out1;  // int16
  wire signed [15:0] acc1_out1;  // int16
  wire signed [15:0] Bit_Shift2_out1;  // int16
  wire signed [31:0] Data_Type_Conversion5_out1;  // int32
  wire Compare_To_Constant3_out1;
  wire AND3_out1;
  reg signed [15:0] Enabled_Resettable_Delay3_bypass_delay;  // sfix16
  reg signed [15:0] Enabled_Resettable_Delay3_reg;  // sfix16
  wire signed [15:0] Enabled_Resettable_Delay3_out1;  // int16
  wire signed [15:0] acc0_out1;  // int16
  wire signed [15:0] Bit_Shift3_out1;  // int16
  wire signed [15:0] Constant_out1;  // int16
  wire signed [16:0] Subtract_sub_temp;  // sfix17
  wire signed [16:0] Subtract_1;  // sfix17
  wire signed [16:0] Subtract_2;  // sfix17
  wire signed [15:0] Subtract_out1;  // int16
  wire signed [31:0] Data_Type_Conversion6_out1;  // int32

  // Celsius
  // mV


  assign Compare_To_Constant_out1 = chan == 2'b00;


  assign Data_Type_Conversion2_out1 = (valid != 1'b0 ? 1'b1 :
              1'b0);


  assign AND_out1 = Compare_To_Constant_out1 & Data_Type_Conversion2_out1;


  always @(posedge clk or posedge reset_x)
    begin : Enabled_Resettable_Delay_process
      if (reset_x == 1'b1) begin
        Enabled_Resettable_Delay_bypass_delay <= 16'sb0000000000000000;
        Enabled_Resettable_Delay_reg <= 16'sb0000000000000000;
      end
      else begin
        if (AND_out1) begin
          Enabled_Resettable_Delay_bypass_delay <= Enabled_Resettable_Delay_reg;
          Enabled_Resettable_Delay_reg <= data;
        end
      end
    end

  assign Enabled_Resettable_Delay_out1 = (AND_out1 == 1'b1 ? Enabled_Resettable_Delay_reg :
              Enabled_Resettable_Delay_bypass_delay);


  SYSTEM_ip_src_acc3 u_acc3 (.clk(clk),
                             .reset_x(reset_x),
                             .In(Enabled_Resettable_Delay_out1),  // int16
                             .Out(acc3_out1)  // int16
                             );
  assign Bit_Shift_out1 = acc3_out1 >>> 8'd3;


  assign Data_Type_Conversion3_out1 = {{16{Bit_Shift_out1[15]}}, Bit_Shift_out1};


  assign alpha1000mV = Data_Type_Conversion3_out1;

  assign Compare_To_Constant1_out1 = chan == 2'b01;


  assign AND1_out1 = Compare_To_Constant1_out1 & Data_Type_Conversion2_out1;


  always @(posedge clk or posedge reset_x)
    begin : Enabled_Resettable_Delay1_process
      if (reset_x == 1'b1) begin
        Enabled_Resettable_Delay1_bypass_delay <= 16'sb0000000000000000;
        Enabled_Resettable_Delay1_reg <= 16'sb0000000000000000;
      end
      else begin
        if (AND1_out1) begin
          Enabled_Resettable_Delay1_bypass_delay <= Enabled_Resettable_Delay1_reg;
          Enabled_Resettable_Delay1_reg <= data;
        end
      end
    end

  assign Enabled_Resettable_Delay1_out1 = (AND1_out1 == 1'b1 ? Enabled_Resettable_Delay1_reg :
              Enabled_Resettable_Delay1_bypass_delay);


  SYSTEM_ip_src_acc2 u_acc2 (.clk(clk),
                             .reset_x(reset_x),
                             .In(Enabled_Resettable_Delay1_out1),  // int16
                             .Out(acc2_out1)  // int16
                             );
  assign Bit_Shift1_out1 = acc2_out1 >>> 8'd3;


  assign Data_Type_Conversion4_out1 = {{16{Bit_Shift1_out1[15]}}, Bit_Shift1_out1};


  assign alpha1800mV = Data_Type_Conversion4_out1;

  assign Compare_To_Constant2_out1 = chan == 2'b10;


  assign AND2_out1 = Compare_To_Constant2_out1 & Data_Type_Conversion2_out1;


  always @(posedge clk or posedge reset_x)
    begin : Enabled_Resettable_Delay2_process
      if (reset_x == 1'b1) begin
        Enabled_Resettable_Delay2_bypass_delay <= 16'sb0000000000000000;
        Enabled_Resettable_Delay2_reg <= 16'sb0000000000000000;
      end
      else begin
        if (AND2_out1) begin
          Enabled_Resettable_Delay2_bypass_delay <= Enabled_Resettable_Delay2_reg;
          Enabled_Resettable_Delay2_reg <= data;
        end
      end
    end

  assign Enabled_Resettable_Delay2_out1 = (AND2_out1 == 1'b1 ? Enabled_Resettable_Delay2_reg :
              Enabled_Resettable_Delay2_bypass_delay);


  SYSTEM_ip_src_acc1 u_acc1 (.clk(clk),
                             .reset_x(reset_x),
                             .In(Enabled_Resettable_Delay2_out1),  // int16
                             .Out(acc1_out1)  // int16
                             );
  assign Bit_Shift2_out1 = acc1_out1 >>> 8'd3;


  assign Data_Type_Conversion5_out1 = {{16{Bit_Shift2_out1[15]}}, Bit_Shift2_out1};


  assign alpha2500mV = Data_Type_Conversion5_out1;

  assign Compare_To_Constant3_out1 = chan == 2'b11;


  assign AND3_out1 = Compare_To_Constant3_out1 & Data_Type_Conversion2_out1;


  always @(posedge clk or posedge reset_x)
    begin : Enabled_Resettable_Delay3_process
      if (reset_x == 1'b1) begin
        Enabled_Resettable_Delay3_bypass_delay <= 16'sb0000000000000000;
        Enabled_Resettable_Delay3_reg <= 16'sb0000000000000000;
      end
      else begin
        if (AND3_out1) begin
          Enabled_Resettable_Delay3_bypass_delay <= Enabled_Resettable_Delay3_reg;
          Enabled_Resettable_Delay3_reg <= data;
        end
      end
    end

  assign Enabled_Resettable_Delay3_out1 = (AND3_out1 == 1'b1 ? Enabled_Resettable_Delay3_reg :
              Enabled_Resettable_Delay3_bypass_delay);


  SYSTEM_ip_src_acc0 u_acc0 (.clk(clk),
                             .reset_x(reset_x),
                             .In(Enabled_Resettable_Delay3_out1),  // int16
                             .Out(acc0_out1)  // int16
                             );
  assign Bit_Shift3_out1 = acc0_out1 >>> 8'd4;


  assign Constant_out1 = 16'sb0000000100010001;


  assign Subtract_1 = {Bit_Shift3_out1[15], Bit_Shift3_out1};
  assign Subtract_2 = {Constant_out1[15], Constant_out1};
  assign Subtract_sub_temp = Subtract_1 - Subtract_2;
  assign Subtract_out1 = ((Subtract_sub_temp[16] == 1'b0) && (Subtract_sub_temp[15] != 1'b0) ? 16'sb0111111111111111 :
              ((Subtract_sub_temp[16] == 1'b1) && (Subtract_sub_temp[15] != 1'b1) ? 16'sb1000000000000000 :
              $signed(Subtract_sub_temp[15:0])));


  assign Data_Type_Conversion6_out1 = {{16{Subtract_out1[15]}}, Subtract_out1};


  assign tempr = Data_Type_Conversion6_out1;

endmodule  // SYSTEM_ip_src_Temperature_and_Voltage_Sensor
