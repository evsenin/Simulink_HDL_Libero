/*
 * File Name:         hdl_prj\ipcore\SYSTEM_ip_v1_0\include\SYSTEM_ip_addr.h
 * Description:       C Header File
 * Created:           2023-01-07 16:29:10
*/

#ifndef SYSTEM_IP_H_
#define SYSTEM_IP_H_

#define  IPCore_Reset_SYSTEM_ip              0x0  //write 0x1 to bit 0 to reset IP core
#define  AXI4_Master_Rd_BaseAddr_SYSTEM_ip   0x8  //Base Address offset for AXI4 Master Read (Default Base Address: hex2dec(0))
#define  AXI4_Master_Wr_BaseAddr_SYSTEM_ip   0xC  //Base Address offset for AXI4 Master Write (Default Base Address: hex2dec(0))
#define  IPCore_Timestamp_SYSTEM_ip          0x10  //contains unique IP timestamp (yymmddHHMM): 2301071628
#define  AXI_CC_SPI_Wr_Data_SYSTEM_ip        0x100  //data register for Inport AXI_CC_SPI_Wr
#define  AXI_CC_CONTROL_Data_SYSTEM_ip       0x104  //data register for Inport AXI_CC_CONTROL
#define  AXI_TVS_1000mV_Data_SYSTEM_ip       0x108  //data register for Outport AXI_TVS_1000mV
#define  AXI_TVS_1800mV_Data_SYSTEM_ip       0x10C  //data register for Outport AXI_TVS_1800mV
#define  AXI_TVS_2500mV_Data_SYSTEM_ip       0x110  //data register for Outport AXI_TVS_2500mV
#define  AXI_TVS_tempr_Data_SYSTEM_ip        0x114  //data register for Outport AXI_TVS_tempr
#define  AXI_SYS_STATUS_Data_SYSTEM_ip       0x118  //data register for Outport AXI_SYS_STATUS
#define  AXI_PWR_STATUS_Data_SYSTEM_ip       0x11C  //data register for Outport AXI_PWR_STATUS
#define  AXI_PLL_STATUS_Data_SYSTEM_ip       0x120  //data register for Outport AXI_PLL_STATUS
#define  AXI_I2S_STATUS_Data_SYSTEM_ip       0x124  //data register for Outport AXI_I2S_STATUS
#define  AXI_CC_SPI_Rd_Data_SYSTEM_ip        0x128  //data register for Outport AXI_CC_SPI_Rd
#define  AXI_CC_STATUS_Data_SYSTEM_ip        0x12C  //data register for Outport AXI_CC_STATUS
#define  AXI_MonADC_STATUS_Data_SYSTEM_ip    0x130  //data register for Outport AXI_MonADC_STATUS
#define  AXI_MonADC_SPI_Rd_Data_SYSTEM_ip    0x134  //data register for Outport AXI_MonADC_SPI_Rd
#define  AXI_Mon_12V_Data_SYSTEM_ip          0x138  //data register for Outport AXI_Mon_12V
#define  AXI_PWR_CONTROL_Data_SYSTEM_ip      0x13C  //data register for Inport AXI_PWR_CONTROL
#define  AXI_Mon_1V8_Data_SYSTEM_ip          0x140  //data register for Outport AXI_Mon_1V8
#define  AXI_Mon_3V3_Data_SYSTEM_ip          0x144  //data register for Outport AXI_Mon_3V3
#define  AXI_Mon_CurrentIn_Data_SYSTEM_ip    0x148  //data register for Outport AXI_Mon_CurrentIn
#define  AXI_Mon_VoltageIn_Data_SYSTEM_ip    0x14C  //data register for Outport AXI_Mon_VoltageIn
#define  AXI_DDR_CONTROL_Data_SYSTEM_ip      0x150  //data register for Inport AXI_DDR_CONTROL
#define  AXI_MonADC_SPI_Wr_Data_SYSTEM_ip    0x154  //data register for Inport AXI_MonADC_SPI_Wr
#define  AXI_MonADC_CONTROL_Data_SYSTEM_ip   0x158  //data register for Inport AXI_MonADC_CONTROL
#define  AXI_XAVIER_CONTROL_Data_SYSTEM_ip   0x15C  //data register for Inport AXI_XAVIER_CONTROL

#endif /* SYSTEM_IP_H_ */
