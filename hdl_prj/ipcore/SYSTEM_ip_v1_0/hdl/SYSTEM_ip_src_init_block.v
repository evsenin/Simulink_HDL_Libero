// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\tb_SYSTEM\SYSTEM_ip_src_init_block.v
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: SYSTEM_ip_src_init_block
// Source Path: tb_SYSTEM/SYSTEM/AD9545CC/init
// Hierarchy Level: 2
// 
// 60 ms min reset;
// 125 ticks per us
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module SYSTEM_ip_src_init_block
          (clk,
           reset_x,
           data_init_0,
           data_init_1,
           data_init_2,
           data_init_3,
           data_init_4,
           data_init_5,
           data_init_6,
           data_init_7,
           data_init_8,
           data_init_9,
           data_init_10,
           data_init_11,
           data_init_12,
           data_init_13,
           data_init_14,
           data_init_15,
           data_init_16,
           data_init_17,
           data_init_18,
           data_init_19,
           data_init_20,
           data_init_21,
           data_init_22,
           data_init_23,
           data_init_24,
           data_init_25,
           data_init_26,
           data_init_27,
           data_init_28,
           data_init_29,
           data_init_30,
           data_init_31,
           data_init_32,
           data_init_33,
           data_init_34,
           data_init_35,
           data_init_36,
           data_init_37,
           data_init_38,
           data_init_39,
           data_init_40,
           data_init_41,
           data_init_42,
           data_init_43,
           data_init_44,
           data_init_45,
           data_init_46,
           data_init_47,
           data_init_48,
           data_init_49,
           data_init_50,
           data_init_51,
           data_init_52,
           data_init_53,
           data_init_54,
           data_init_55,
           data_init_56,
           data_init_57,
           data_init_58,
           data_init_59,
           data_init_60,
           data_init_61,
           data_init_62,
           data_init_63,
           data_init_64,
           data_init_65,
           data_init_66,
           data_init_67,
           data_init_68,
           data_init_69,
           data_init_70,
           data_init_71,
           data_init_72,
           data_init_73,
           data_init_74,
           data_init_75,
           data_init_76,
           data_init_77,
           data_init_78,
           data_init_79,
           data_init_80,
           data_init_81,
           data_init_82,
           data_init_83,
           data_init_84,
           data_init_85,
           data_init_86,
           data_init_87,
           data_init_88,
           data_init_89,
           data_init_90,
           data_init_91,
           data_init_92,
           data_init_93,
           data_init_94,
           data_init_95,
           data_init_96,
           data_init_97,
           data_init_98,
           data_init_99,
           data_init_100,
           data_init_101,
           data_init_102,
           data_init_103,
           data_init_104,
           data_init_105,
           data_init_106,
           data_init_107,
           data_init_108,
           data_init_109,
           data_init_110,
           data_init_111,
           data_init_112,
           data_init_113,
           data_init_114,
           data_init_115,
           data_init_116,
           data_init_117,
           data_init_118,
           data_init_119,
           data_init_120,
           data_init_121,
           data_in,
           fifo_empty,
           rst,
           push,
           data_out,
           resetn,
           init_done);

  // Default encoded enumeration values for type state_type_is_init1
  parameter state_type_is_init1_IN_CAL = 4'd0, state_type_is_init1_IN_INF = 4'd1, state_type_is_init1_IN_INIT = 4'd2, state_type_is_init1_IN_INIT_DONE = 4'd3, state_type_is_init1_IN_RESET = 4'd4, state_type_is_init1_IN_UPD_REG = 4'd5, state_type_is_init1_IN_WAIT0 = 4'd6, state_type_is_init1_IN_WAIT01 = 4'd7, state_type_is_init1_IN_WAIT1 = 4'd8, state_type_is_init1_IN_WAIT3 = 4'd9;

  input   clk;
  input   reset_x;
  input   [23:0] data_init_0;  // ufix24
  input   [23:0] data_init_1;  // ufix24
  input   [23:0] data_init_2;  // ufix24
  input   [23:0] data_init_3;  // ufix24
  input   [23:0] data_init_4;  // ufix24
  input   [23:0] data_init_5;  // ufix24
  input   [23:0] data_init_6;  // ufix24
  input   [23:0] data_init_7;  // ufix24
  input   [23:0] data_init_8;  // ufix24
  input   [23:0] data_init_9;  // ufix24
  input   [23:0] data_init_10;  // ufix24
  input   [23:0] data_init_11;  // ufix24
  input   [23:0] data_init_12;  // ufix24
  input   [23:0] data_init_13;  // ufix24
  input   [23:0] data_init_14;  // ufix24
  input   [23:0] data_init_15;  // ufix24
  input   [23:0] data_init_16;  // ufix24
  input   [23:0] data_init_17;  // ufix24
  input   [23:0] data_init_18;  // ufix24
  input   [23:0] data_init_19;  // ufix24
  input   [23:0] data_init_20;  // ufix24
  input   [23:0] data_init_21;  // ufix24
  input   [23:0] data_init_22;  // ufix24
  input   [23:0] data_init_23;  // ufix24
  input   [23:0] data_init_24;  // ufix24
  input   [23:0] data_init_25;  // ufix24
  input   [23:0] data_init_26;  // ufix24
  input   [23:0] data_init_27;  // ufix24
  input   [23:0] data_init_28;  // ufix24
  input   [23:0] data_init_29;  // ufix24
  input   [23:0] data_init_30;  // ufix24
  input   [23:0] data_init_31;  // ufix24
  input   [23:0] data_init_32;  // ufix24
  input   [23:0] data_init_33;  // ufix24
  input   [23:0] data_init_34;  // ufix24
  input   [23:0] data_init_35;  // ufix24
  input   [23:0] data_init_36;  // ufix24
  input   [23:0] data_init_37;  // ufix24
  input   [23:0] data_init_38;  // ufix24
  input   [23:0] data_init_39;  // ufix24
  input   [23:0] data_init_40;  // ufix24
  input   [23:0] data_init_41;  // ufix24
  input   [23:0] data_init_42;  // ufix24
  input   [23:0] data_init_43;  // ufix24
  input   [23:0] data_init_44;  // ufix24
  input   [23:0] data_init_45;  // ufix24
  input   [23:0] data_init_46;  // ufix24
  input   [23:0] data_init_47;  // ufix24
  input   [23:0] data_init_48;  // ufix24
  input   [23:0] data_init_49;  // ufix24
  input   [23:0] data_init_50;  // ufix24
  input   [23:0] data_init_51;  // ufix24
  input   [23:0] data_init_52;  // ufix24
  input   [23:0] data_init_53;  // ufix24
  input   [23:0] data_init_54;  // ufix24
  input   [23:0] data_init_55;  // ufix24
  input   [23:0] data_init_56;  // ufix24
  input   [23:0] data_init_57;  // ufix24
  input   [23:0] data_init_58;  // ufix24
  input   [23:0] data_init_59;  // ufix24
  input   [23:0] data_init_60;  // ufix24
  input   [23:0] data_init_61;  // ufix24
  input   [23:0] data_init_62;  // ufix24
  input   [23:0] data_init_63;  // ufix24
  input   [23:0] data_init_64;  // ufix24
  input   [23:0] data_init_65;  // ufix24
  input   [23:0] data_init_66;  // ufix24
  input   [23:0] data_init_67;  // ufix24
  input   [23:0] data_init_68;  // ufix24
  input   [23:0] data_init_69;  // ufix24
  input   [23:0] data_init_70;  // ufix24
  input   [23:0] data_init_71;  // ufix24
  input   [23:0] data_init_72;  // ufix24
  input   [23:0] data_init_73;  // ufix24
  input   [23:0] data_init_74;  // ufix24
  input   [23:0] data_init_75;  // ufix24
  input   [23:0] data_init_76;  // ufix24
  input   [23:0] data_init_77;  // ufix24
  input   [23:0] data_init_78;  // ufix24
  input   [23:0] data_init_79;  // ufix24
  input   [23:0] data_init_80;  // ufix24
  input   [23:0] data_init_81;  // ufix24
  input   [23:0] data_init_82;  // ufix24
  input   [23:0] data_init_83;  // ufix24
  input   [23:0] data_init_84;  // ufix24
  input   [23:0] data_init_85;  // ufix24
  input   [23:0] data_init_86;  // ufix24
  input   [23:0] data_init_87;  // ufix24
  input   [23:0] data_init_88;  // ufix24
  input   [23:0] data_init_89;  // ufix24
  input   [23:0] data_init_90;  // ufix24
  input   [23:0] data_init_91;  // ufix24
  input   [23:0] data_init_92;  // ufix24
  input   [23:0] data_init_93;  // ufix24
  input   [23:0] data_init_94;  // ufix24
  input   [23:0] data_init_95;  // ufix24
  input   [23:0] data_init_96;  // ufix24
  input   [23:0] data_init_97;  // ufix24
  input   [23:0] data_init_98;  // ufix24
  input   [23:0] data_init_99;  // ufix24
  input   [23:0] data_init_100;  // ufix24
  input   [23:0] data_init_101;  // ufix24
  input   [23:0] data_init_102;  // ufix24
  input   [23:0] data_init_103;  // ufix24
  input   [23:0] data_init_104;  // ufix24
  input   [23:0] data_init_105;  // ufix24
  input   [23:0] data_init_106;  // ufix24
  input   [23:0] data_init_107;  // ufix24
  input   [23:0] data_init_108;  // ufix24
  input   [23:0] data_init_109;  // ufix24
  input   [23:0] data_init_110;  // ufix24
  input   [23:0] data_init_111;  // ufix24
  input   [23:0] data_init_112;  // ufix24
  input   [23:0] data_init_113;  // ufix24
  input   [23:0] data_init_114;  // ufix24
  input   [23:0] data_init_115;  // ufix24
  input   [23:0] data_init_116;  // ufix24
  input   [23:0] data_init_117;  // ufix24
  input   [23:0] data_init_118;  // ufix24
  input   [23:0] data_init_119;  // ufix24
  input   [23:0] data_init_120;  // ufix24
  input   [23:0] data_init_121;  // ufix24
  input   [23:0] data_in;  // ufix24
  input   fifo_empty;
  input   rst;
  output  push;
  output  [23:0] data_out;  // ufix24
  output  resetn;
  output  init_done;


  wire [23:0] data_init [0:121];  // ufix24 [122]
  reg [3:0] is_init;  // uint8
  reg [15:0] init_cnt;  // uint16
  reg [23:0] data_in_prev;  // ufix24
  reg [15:0] init_sz;  // uint16
  reg [31:0] temporalCounter_i1;  // ufix32
  reg  push_reg;
  reg [23:0] data_out_reg;  // ufix24
  reg  resetn_reg;
  reg  init_done_reg;
  reg [3:0] is_init_next;  // enum type state_type_is_init1 (10 enums)
  reg [15:0] init_cnt_next;  // uint16
  reg [23:0] data_in_prev_next;  // ufix24
  reg [15:0] init_sz_next;  // uint16
  reg [31:0] temporalCounter_i1_next;  // ufix32
  reg  push_reg_next;
  reg [23:0] data_out_reg_next;  // ufix24
  reg  resetn_reg_next;
  reg  init_done_reg_next;
  reg [31:0] temporalCounter_i1_temp;  // ufix32
  reg [15:0] add_temp;  // ufix16


  assign data_init[0] = data_init_0;
  assign data_init[1] = data_init_1;
  assign data_init[2] = data_init_2;
  assign data_init[3] = data_init_3;
  assign data_init[4] = data_init_4;
  assign data_init[5] = data_init_5;
  assign data_init[6] = data_init_6;
  assign data_init[7] = data_init_7;
  assign data_init[8] = data_init_8;
  assign data_init[9] = data_init_9;
  assign data_init[10] = data_init_10;
  assign data_init[11] = data_init_11;
  assign data_init[12] = data_init_12;
  assign data_init[13] = data_init_13;
  assign data_init[14] = data_init_14;
  assign data_init[15] = data_init_15;
  assign data_init[16] = data_init_16;
  assign data_init[17] = data_init_17;
  assign data_init[18] = data_init_18;
  assign data_init[19] = data_init_19;
  assign data_init[20] = data_init_20;
  assign data_init[21] = data_init_21;
  assign data_init[22] = data_init_22;
  assign data_init[23] = data_init_23;
  assign data_init[24] = data_init_24;
  assign data_init[25] = data_init_25;
  assign data_init[26] = data_init_26;
  assign data_init[27] = data_init_27;
  assign data_init[28] = data_init_28;
  assign data_init[29] = data_init_29;
  assign data_init[30] = data_init_30;
  assign data_init[31] = data_init_31;
  assign data_init[32] = data_init_32;
  assign data_init[33] = data_init_33;
  assign data_init[34] = data_init_34;
  assign data_init[35] = data_init_35;
  assign data_init[36] = data_init_36;
  assign data_init[37] = data_init_37;
  assign data_init[38] = data_init_38;
  assign data_init[39] = data_init_39;
  assign data_init[40] = data_init_40;
  assign data_init[41] = data_init_41;
  assign data_init[42] = data_init_42;
  assign data_init[43] = data_init_43;
  assign data_init[44] = data_init_44;
  assign data_init[45] = data_init_45;
  assign data_init[46] = data_init_46;
  assign data_init[47] = data_init_47;
  assign data_init[48] = data_init_48;
  assign data_init[49] = data_init_49;
  assign data_init[50] = data_init_50;
  assign data_init[51] = data_init_51;
  assign data_init[52] = data_init_52;
  assign data_init[53] = data_init_53;
  assign data_init[54] = data_init_54;
  assign data_init[55] = data_init_55;
  assign data_init[56] = data_init_56;
  assign data_init[57] = data_init_57;
  assign data_init[58] = data_init_58;
  assign data_init[59] = data_init_59;
  assign data_init[60] = data_init_60;
  assign data_init[61] = data_init_61;
  assign data_init[62] = data_init_62;
  assign data_init[63] = data_init_63;
  assign data_init[64] = data_init_64;
  assign data_init[65] = data_init_65;
  assign data_init[66] = data_init_66;
  assign data_init[67] = data_init_67;
  assign data_init[68] = data_init_68;
  assign data_init[69] = data_init_69;
  assign data_init[70] = data_init_70;
  assign data_init[71] = data_init_71;
  assign data_init[72] = data_init_72;
  assign data_init[73] = data_init_73;
  assign data_init[74] = data_init_74;
  assign data_init[75] = data_init_75;
  assign data_init[76] = data_init_76;
  assign data_init[77] = data_init_77;
  assign data_init[78] = data_init_78;
  assign data_init[79] = data_init_79;
  assign data_init[80] = data_init_80;
  assign data_init[81] = data_init_81;
  assign data_init[82] = data_init_82;
  assign data_init[83] = data_init_83;
  assign data_init[84] = data_init_84;
  assign data_init[85] = data_init_85;
  assign data_init[86] = data_init_86;
  assign data_init[87] = data_init_87;
  assign data_init[88] = data_init_88;
  assign data_init[89] = data_init_89;
  assign data_init[90] = data_init_90;
  assign data_init[91] = data_init_91;
  assign data_init[92] = data_init_92;
  assign data_init[93] = data_init_93;
  assign data_init[94] = data_init_94;
  assign data_init[95] = data_init_95;
  assign data_init[96] = data_init_96;
  assign data_init[97] = data_init_97;
  assign data_init[98] = data_init_98;
  assign data_init[99] = data_init_99;
  assign data_init[100] = data_init_100;
  assign data_init[101] = data_init_101;
  assign data_init[102] = data_init_102;
  assign data_init[103] = data_init_103;
  assign data_init[104] = data_init_104;
  assign data_init[105] = data_init_105;
  assign data_init[106] = data_init_106;
  assign data_init[107] = data_init_107;
  assign data_init[108] = data_init_108;
  assign data_init[109] = data_init_109;
  assign data_init[110] = data_init_110;
  assign data_init[111] = data_init_111;
  assign data_init[112] = data_init_112;
  assign data_init[113] = data_init_113;
  assign data_init[114] = data_init_114;
  assign data_init[115] = data_init_115;
  assign data_init[116] = data_init_116;
  assign data_init[117] = data_init_117;
  assign data_init[118] = data_init_118;
  assign data_init[119] = data_init_119;
  assign data_init[120] = data_init_120;
  assign data_init[121] = data_init_121;

  always @(posedge clk or posedge reset_x)
    begin : init_process
      if (reset_x == 1'b1) begin
        //Entry: SYSTEM/AD9545CC/init
        //Entry Internal: SYSTEM/AD9545CC/init
        //Transition
        is_init <= state_type_is_init1_IN_RESET;
        temporalCounter_i1 <= 32'b00000000000000000000000000000000;
        //Entry 'RESET'
        data_out_reg <= 24'b000000000000000000000000;
        init_cnt <= 16'd0;
        init_sz <= 16'd122;
        push_reg <= 1'b0;
        data_in_prev <= 24'b000000000000000000000000;
        resetn_reg <= 1'b0;
        init_done_reg <= 1'b0;
      end
      else begin
        is_init <= is_init_next;
        init_cnt <= init_cnt_next;
        data_in_prev <= data_in_prev_next;
        init_sz <= init_sz_next;
        temporalCounter_i1 <= temporalCounter_i1_next;
        push_reg <= push_reg_next;
        data_out_reg <= data_out_reg_next;
        resetn_reg <= resetn_reg_next;
        init_done_reg <= init_done_reg_next;
      end
    end

  always @* begin
    add_temp = 16'b0000000000000000;
    init_cnt_next = init_cnt;
    temporalCounter_i1_temp = temporalCounter_i1;
    push_reg_next = push_reg;
    data_out_reg_next = data_out_reg;
    resetn_reg_next = resetn_reg;
    init_done_reg_next = init_done_reg;
    is_init_next = is_init;
    data_in_prev_next = data_in_prev;
    init_sz_next = init_sz;
    //Gateway: SYSTEM/AD9545CC/init
    if (temporalCounter_i1 < 32'd4294967295) begin
      temporalCounter_i1_temp = temporalCounter_i1 + 32'b00000000000000000000000000000001;
    end
    //During: SYSTEM/AD9545CC/init
    case ( is_init)
      state_type_is_init1_IN_CAL :
        begin
          //During 'CAL'
          if (init_cnt == 16'b0000000000000100) begin
            //Transition
            //Exit 'CAL'
            push_reg_next = 1'b0;
            is_init_next = state_type_is_init1_IN_WAIT1;
            //Entry 'WAIT1'
          end
          else begin
            push_reg_next = 1'b1;
            case ( init_cnt)
              16'd0 :
                begin
                  data_out_reg_next = 24'b001000000000000000000000;
                end
              16'd1 :
                begin
                  data_out_reg_next = 24'b000000000000111100000001;
                end
              16'd2 :
                begin
                  data_out_reg_next = 24'b001000000000000000000010;
                end
              16'd3 :
                begin
                  data_out_reg_next = 24'b000000000000111100000001;
                end
            endcase
            init_cnt_next = init_cnt + 16'b0000000000000001;
          end
        end
      state_type_is_init1_IN_INF :
        begin
          //During 'INF'
          if (rst) begin
            //Transition
            //Exit 'INF'
            is_init_next = state_type_is_init1_IN_INIT;
            //Entry 'INIT'
            init_cnt_next = 16'd0;
            push_reg_next = 1'b0;
          end
          else begin
            push_reg_next = data_in_prev != data_in;
            data_in_prev_next = data_in;
            data_out_reg_next = data_in;
          end
        end
      state_type_is_init1_IN_INIT :
        begin
          //During 'INIT'
          if (init_cnt == init_sz) begin
            //Transition
            //Exit 'INIT'
            push_reg_next = 1'b0;
            is_init_next = state_type_is_init1_IN_WAIT0;
            //Entry 'WAIT0'
          end
          else if (fifo_empty) begin
            push_reg_next = 1'b1;
            init_cnt_next = init_cnt + 16'b0000000000000001;
            add_temp = init_cnt + 16'b0000000000000001;
            data_out_reg_next = data_init[$signed({1'b0, add_temp}) - 17'sb00000000000000001];
          end
          else begin
            push_reg_next = 1'b0;
          end
        end
      state_type_is_init1_IN_INIT_DONE :
        begin
          //During 'INIT_DONE'
          //Transition
          is_init_next = state_type_is_init1_IN_INF;
          //Entry 'INF'
          data_in_prev_next = data_in;
          push_reg_next = 1'b0;
        end
      state_type_is_init1_IN_RESET :
        begin
          //During 'RESET'
          if (temporalCounter_i1_temp >= 32'b00000000100001011000001110110000) begin
            //Transition
            is_init_next = state_type_is_init1_IN_WAIT3;
            temporalCounter_i1_temp = 32'b00000000000000000000000000000000;
            //Entry 'WAIT3'
            resetn_reg_next = 1'b1;
          end
          else begin
            data_out_reg_next = 24'b000000000000000000000000;
            init_cnt_next = 16'd0;
            init_sz_next = 16'd122;
            push_reg_next = 1'b0;
            data_in_prev_next = 24'b000000000000000000000000;
            resetn_reg_next = 1'b0;
            init_done_reg_next = 1'b0;
          end
        end
      state_type_is_init1_IN_UPD_REG :
        begin
          //During 'UPD_REG'
          //Transition
          //Exit 'UPD_REG'
          push_reg_next = 1'b0;
          is_init_next = state_type_is_init1_IN_WAIT01;
          //Entry 'WAIT01'
        end
      state_type_is_init1_IN_WAIT0 :
        begin
          //During 'WAIT0'
          if (fifo_empty) begin
            //Transition
            is_init_next = state_type_is_init1_IN_UPD_REG;
            //Entry 'UPD_REG'
            push_reg_next = 1'b1;
            data_out_reg_next = 24'b000000000000111100000001;
          end
        end
      state_type_is_init1_IN_WAIT01 :
        begin
          //During 'WAIT01'
          if (fifo_empty) begin
            //Transition
            is_init_next = state_type_is_init1_IN_CAL;
            //Entry 'CAL'
            init_cnt_next = 16'd0;
          end
        end
      state_type_is_init1_IN_WAIT1 :
        begin
          //During 'WAIT1'
          if (fifo_empty) begin
            //Transition
            is_init_next = state_type_is_init1_IN_INIT_DONE;
            //Entry 'INIT_DONE'
            init_done_reg_next = 1'b1;
          end
        end
      default :
        begin
          //case IN_WAIT3:
          //During 'WAIT3'
          if (temporalCounter_i1_temp >= 32'b00000000000100110001001011010000) begin
            //Transition
            is_init_next = state_type_is_init1_IN_INIT;
            //Entry 'INIT'
            init_cnt_next = 16'd0;
            push_reg_next = 1'b0;
          end
          else begin
            resetn_reg_next = 1'b1;
          end
        end
    endcase
    temporalCounter_i1_next = temporalCounter_i1_temp;
  end

  assign push = push_reg_next;
  assign data_out = data_out_reg_next;
  assign resetn = resetn_reg_next;
  assign init_done = init_done_reg_next;


endmodule  // SYSTEM_ip_src_init_block

