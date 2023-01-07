// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_CameraIO\CameraIO_ip_src_sco_slave_sel.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: CameraIO_ip_src_sco_slave_sel
// Source Path: tb_CameraIO/CameraIO/TCA9548A/sco_slave_sel
// Hierarchy Level: 2
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module CameraIO_ip_src_sco_slave_sel
          (u,
           w,
           y_0,
           y_1,
           y_2,
           y_3,
           y_4,
           y_5,
           y_6,
           y_7);


  input   [7:0] u;  // uint8
  input   w;
  output  y_0;  // boolean
  output  y_1;  // boolean
  output  y_2;  // boolean
  output  y_3;  // boolean
  output  y_4;  // boolean
  output  y_5;  // boolean
  output  y_6;  // boolean
  output  y_7;  // boolean


  reg  [0:7] y;  // boolean [8]
  reg  aVarTruthTableCondition_1;
  reg  aVarTruthTableCondition_2;
  reg  aVarTruthTableCondition_3;
  reg  aVarTruthTableCondition_4;
  reg  aVarTruthTableCondition_5;
  reg  aVarTruthTableCondition_6;
  reg  aVarTruthTableCondition_7;
  reg  aVarTruthTableCondition_8;


  always @(u, w) begin
    //Truth Table Function 'CameraIO/TCA9548A/sco_slave_sel'
    // sel 1
    //Condition '#1'
    aVarTruthTableCondition_1 = u[0] != 1'b0;
    // sel 2
    //Condition '#2'
    aVarTruthTableCondition_2 = u[1] != 1'b0;
    // sel 3
    //Condition '#3'
    aVarTruthTableCondition_3 = u[2] != 1'b0;
    // sel 4
    //Condition '#4'
    aVarTruthTableCondition_4 = u[3] != 1'b0;
    // sel 5
    //Condition '#5'
    aVarTruthTableCondition_5 = u[4] != 1'b0;
    // sel 6
    //Condition '#6'
    aVarTruthTableCondition_6 = u[5] != 1'b0;
    // sel 7
    //Condition '#7'
    aVarTruthTableCondition_7 = u[6] != 1'b0;
    // sel 8
    //Condition '#8'
    aVarTruthTableCondition_8 = u[7] != 1'b0;
    if (aVarTruthTableCondition_1) begin
      //Decision 'D1'
      // sel 1
      //Action '1'
      y = {8{1'b1}};
      //Action '1'
      y[0] = w;
    end
    else if (aVarTruthTableCondition_2) begin
      //Decision 'D2'
      // sel 2
      //Action '2'
      y = {8{1'b1}};
      //Action '2'
      y[1] = w;
    end
    else if (aVarTruthTableCondition_3) begin
      //Decision 'D3'
      // sel 3
      //Action '3'
      y = {8{1'b1}};
      //Action '3'
      y[2] = w;
    end
    else if (aVarTruthTableCondition_4) begin
      //Decision 'D4'
      // sel 4
      //Action '4'
      y = {8{1'b1}};
      //Action '4'
      y[3] = w;
    end
    else if (aVarTruthTableCondition_5) begin
      //Decision 'D5'
      // sel 5
      //Action '5'
      y = {8{1'b1}};
      //Action '5'
      y[4] = w;
    end
    else if (aVarTruthTableCondition_6) begin
      //Decision 'D6'
      // sel 6
      //Action '6'
      y = {8{1'b1}};
      //Action '6'
      y[5] = w;
    end
    else if (aVarTruthTableCondition_7) begin
      //Decision 'D7'
      // sel 7
      //Action '7'
      y = {8{1'b1}};
      //Action '7'
      y[6] = w;
    end
    else if (aVarTruthTableCondition_8) begin
      //Decision 'D8'
      // sel 8
      //Action '8'
      y = {8{1'b1}};
      //Action '8'
      y[7] = w;
    end
    else begin
      //Decision 'D9'
      // Default
      // sel none
      //Action '9'
      y = {8{1'b1}};
    end
  end


  assign y_0 = y[0];

  assign y_1 = y[1];

  assign y_2 = y[2];

  assign y_3 = y[3];

  assign y_4 = y[4];

  assign y_5 = y[5];

  assign y_6 = y[6];

  assign y_7 = y[7];

endmodule  // CameraIO_ip_src_sco_slave_sel
