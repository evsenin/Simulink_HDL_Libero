# TCL file to be Executed by Libero
# module SYSTEM_ip

set myTool "Microchip Libero SoC 2022.3"
set myProject Libero_sd
set myProjectDirectory ./prj
new_project -name $myProject -location $myProjectDirectory -hdl VERILOG -family "PolarFire" -die "MPF300T" -package "FCG1152" -speed "STD"
 
# Add HDL Source Files to Project
import_files -hdl_source hdl/SYSTEM_ip_src_init.v 
import_files -hdl_source hdl/SYSTEM_ip_src_spi_sm.v 
import_files -hdl_source hdl/SYSTEM_ip_src_SimpleDualPortRAM_generic.v 
import_files -hdl_source hdl/SYSTEM_ip_src_HDL_FIFO.v 
import_files -hdl_source hdl/SYSTEM_ip_src_Compare_To_Constant.v 
import_files -hdl_source hdl/SYSTEM_ip_src_proc.v 
import_files -hdl_source hdl/SYSTEM_ip_src_AD7173_8_ADC_0.v 
import_files -hdl_source hdl/SYSTEM_ip_src_AD7173_8_Proc_0.v 
import_files -hdl_source hdl/SYSTEM_ip_src_pulse.v 
import_files -hdl_source hdl/SYSTEM_ip_src_init_block.v 
import_files -hdl_source hdl/SYSTEM_ip_src_spi_sm_block.v 
import_files -hdl_source hdl/SYSTEM_ip_src_HDL_FIFO_block.v 
import_files -hdl_source hdl/SYSTEM_ip_src_AD9545CC.v 
import_files -hdl_source hdl/SYSTEM_ip_src_spi_slave.v 
import_files -hdl_source hdl/SYSTEM_ip_src_SPISlave.v 
import_files -hdl_source hdl/SYSTEM_ip_src_acc0.v 
import_files -hdl_source hdl/SYSTEM_ip_src_acc1.v 
import_files -hdl_source hdl/SYSTEM_ip_src_acc2.v 
import_files -hdl_source hdl/SYSTEM_ip_src_acc3.v 
import_files -hdl_source hdl/SYSTEM_ip_src_Temperature_and_Voltage_Sensor.v 
import_files -hdl_source hdl/SYSTEM_ip_src_AXI4LiteMaster.v 
import_files -hdl_source hdl/SYSTEM_ip_src_spi_slave_block.v 
import_files -hdl_source hdl/SYSTEM_ip_src_spi2axil.v 
import_files -hdl_source hdl/SYSTEM_ip_src_Pulse_extender_ctrl.v 
import_files -hdl_source hdl/SYSTEM_ip_src_pulse_10mks.v 
import_files -hdl_source hdl/SYSTEM_ip_src_pulse_10mks1.v 
import_files -hdl_source hdl/SYSTEM_ip_src_time_stamp_engine.v 
import_files -hdl_source hdl/SYSTEM_ip_src_SYSTEM.v 
import_files -hdl_source hdl/SYSTEM_ip_reset_sync.v 
import_files -hdl_source hdl/SYSTEM_ip_dut.v 
import_files -hdl_source hdl/SYSTEM_ip_SimpleDualPortRAM_generic.v 
import_files -hdl_source hdl/SYSTEM_ip_rd_addr_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_rd_len_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_rdata_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_axi4_master_rd.v 
import_files -hdl_source hdl/SYSTEM_ip_wr_data_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_wr_addr_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_wr_len_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_wdata_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_SimpleDualPortRAM_singlebit.v 
import_files -hdl_source hdl/SYSTEM_ip_wlast_fifo.v 
import_files -hdl_source hdl/SYSTEM_ip_axi4_master_wr.v 
import_files -hdl_source hdl/SYSTEM_ip_addr_decoder.v 
import_files -hdl_source hdl/SYSTEM_ip_rdfifo_data.v 
import_files -hdl_source hdl/SYSTEM_ip_rdfifo_last.v 
import_files -hdl_source hdl/SYSTEM_ip_rdfifo_rid.v 
import_files -hdl_source hdl/SYSTEM_ip_reset_hold.v 
import_files -hdl_source hdl/SYSTEM_ip_axi4_module.v 
import_files -hdl_source hdl/SYSTEM_ip_axi4.v 
import_files -hdl_source hdl/SYSTEM_ip.v 
build_design_hierarchy

# Smartdesign initializations
create_smartdesign -sd_name Libero_sd
sd_instantiate_hdl_module -sd_name Libero_sd -hdl_module_name SYSTEM_ip -hdl_file hdl/SYSTEM_ip.v
save_smartdesign -sd_name Libero_sd
save_project
build_design_hierarchy

# Create HDL Core to Instiantiate in SmartDesign
create_hdl_core -file hdl/SYSTEM_ip.v -module SYSTEM_ip 

## AXI4 Bus
# Connection point for Bus Interface
hdl_core_add_bif -hdl_core_name SYSTEM_ip -bif_definition {AXI4:AMBA:AMBA4:slave} -bif_name AXI4
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWID -core_signal_name AXI4_AWID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWADDR -core_signal_name AXI4_AWADDR 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWLEN -core_signal_name AXI4_AWLEN 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWSIZE -core_signal_name AXI4_AWSIZE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWBURST -core_signal_name AXI4_AWBURST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWLOCK -core_signal_name AXI4_AWLOCK 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWCACHE -core_signal_name AXI4_AWCACHE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWPROT -core_signal_name AXI4_AWPROT 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWVALID -core_signal_name AXI4_AWVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name WDATA -core_signal_name AXI4_WDATA 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name WSTRB -core_signal_name AXI4_WSTRB 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name WLAST -core_signal_name AXI4_WLAST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name WVALID -core_signal_name AXI4_WVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name BREADY -core_signal_name AXI4_BREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARID -core_signal_name AXI4_ARID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARADDR -core_signal_name AXI4_ARADDR 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARLEN -core_signal_name AXI4_ARLEN 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARSIZE -core_signal_name AXI4_ARSIZE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARBURST -core_signal_name AXI4_ARBURST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARLOCK -core_signal_name AXI4_ARLOCK 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARCACHE -core_signal_name AXI4_ARCACHE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARPROT -core_signal_name AXI4_ARPROT 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARVALID -core_signal_name AXI4_ARVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name RREADY -core_signal_name AXI4_RREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name AWREADY -core_signal_name AXI4_AWREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name WREADY -core_signal_name AXI4_WREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name BID -core_signal_name AXI4_BID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name BRESP -core_signal_name AXI4_BRESP 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name BVALID -core_signal_name AXI4_BVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name ARREADY -core_signal_name AXI4_ARREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name RID -core_signal_name AXI4_RID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name RDATA -core_signal_name AXI4_RDATA 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name RRESP -core_signal_name AXI4_RRESP 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name RLAST -core_signal_name AXI4_RLAST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4 -bif_signal_name RVALID -core_signal_name AXI4_RVALID 

## External Ports
# connection point TVS_valid
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:TVS_valid -port_name TVS_valid

# connection point TVS_chan
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:TVS_chan -port_name TVS_chan

# connection point TVS_data
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:TVS_data -port_name TVS_data

# connection point SYS_STATUS
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:SYS_STATUS -port_name SYS_STATUS

# connection point PWR_STATUS
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:PWR_STATUS -port_name PWR_STATUS

# connection point PLL_STATUS
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:PLL_STATUS -port_name PLL_STATUS

# connection point XAVIER_SPI2_SCK
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI2_SCK -port_name XAVIER_SPI2_SCK

# connection point XAVIER_SPI2_nCS0
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI2_nCS0 -port_name XAVIER_SPI2_nCS0

# connection point XAVIER_SPI2_MOSI
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI2_MOSI -port_name XAVIER_SPI2_MOSI

# connection point XAVIER_I2S_CLK
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_I2S_CLK -port_name XAVIER_I2S_CLK

# connection point XAVIER_I2S_FS
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_I2S_FS -port_name XAVIER_I2S_FS

# connection point XAVIER_I2S_SDIN
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_I2S_SDIN -port_name XAVIER_I2S_SDIN

# connection point XAVIER_I2S_SDOUT
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_I2S_SDOUT -port_name XAVIER_I2S_SDOUT

# connection point CC_MISO
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_MISO -port_name CC_MISO

# connection point CC_M20
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_M20 -port_name CC_M20

# connection point XAVIER_SPI1_nCS0
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI1_nCS0 -port_name XAVIER_SPI1_nCS0

# connection point XAVIER_SPI1_SCK
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI1_SCK -port_name XAVIER_SPI1_SCK

# connection point XAVIER_SPI1_MOSI
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI1_MOSI -port_name XAVIER_SPI1_MOSI

# connection point MonADC_nERROR
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:MonADC_nERROR -port_name MonADC_nERROR

# connection point MonADC_MISO
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:MonADC_MISO -port_name MonADC_MISO

# connection point DDR_RESET
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:DDR_RESET -port_name DDR_RESET

# connection point PWR_CONTOL
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:PWR_CONTOL -port_name PWR_CONTOL

# connection point XAVIER_SPI2_MISO
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI2_MISO -port_name XAVIER_SPI2_MISO

# connection point PPS_OUT
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:PPS_OUT -port_name PPS_OUT

# connection point CC_nCS
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_nCS -port_name CC_nCS

# connection point CC_nRESET
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_nRESET -port_name CC_nRESET

# connection point CC_MOSI
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_MOSI -port_name CC_MOSI

# connection point CC_SCK
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_SCK -port_name CC_SCK

# connection point CC_M43
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_M43 -port_name CC_M43

# connection point CC_LOCKED
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_LOCKED -port_name CC_LOCKED

# connection point CC_CLK_SEL
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:CC_CLK_SEL -port_name CC_CLK_SEL

# connection point SysReset_N
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:SysReset_N -port_name SysReset_N

# connection point XAVIER_SPI1_MISO
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI1_MISO -port_name XAVIER_SPI1_MISO

# connection point MonADC_nCS
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:MonADC_nCS -port_name MonADC_nCS

# connection point MonADC_SCK
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:MonADC_SCK -port_name MonADC_SCK

# connection point MonADC_MOSI
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:MonADC_MOSI -port_name MonADC_MOSI

# connection point XAVIER_RESET_N
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_RESET_N -port_name XAVIER_RESET_N

# connection point XAVIER_SPI1_ENB_MISO
sd_connect_pin_to_port -sd_name Libero_sd -pin_name SYSTEM_ip_0:XAVIER_SPI1_ENB_MISO -port_name XAVIER_SPI1_ENB_MISO

## AXI4 Master
# Connection point for Bus Interface
hdl_core_add_bif -hdl_core_name SYSTEM_ip -bif_definition {AXI4:AMBA:AMBA4:master} -bif_name AXI4_Master
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name RDATA -core_signal_name AXI4_Master_Rd_RDATA 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name RLAST -core_signal_name AXI4_Master_Rd_RLAST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name RVALID -core_signal_name AXI4_Master_Rd_RVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name RID -core_signal_name AXI4_Master_Rd_RID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name RRESP -core_signal_name AXI4_Master_Rd_RRESP 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARREADY -core_signal_name AXI4_Master_Rd_ARREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARID -core_signal_name AXI4_Master_Rd_ARID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARADDR -core_signal_name AXI4_Master_Rd_ARADDR 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARLEN -core_signal_name AXI4_Master_Rd_ARLEN 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARSIZE -core_signal_name AXI4_Master_Rd_ARSIZE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARBURST -core_signal_name AXI4_Master_Rd_ARBURST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARLOCK -core_signal_name AXI4_Master_Rd_ARLOCK 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARCACHE -core_signal_name AXI4_Master_Rd_ARCACHE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARPROT -core_signal_name AXI4_Master_Rd_ARPROT 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name ARVALID -core_signal_name AXI4_Master_Rd_ARVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name RREADY -core_signal_name AXI4_Master_Rd_RREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWREADY -core_signal_name AXI4_Master_Wr_AWREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name WREADY -core_signal_name AXI4_Master_Wr_WREADY 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name BID -core_signal_name AXI4_Master_Wr_BID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name BRESP -core_signal_name AXI4_Master_Wr_BRESP 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name BVALID -core_signal_name AXI4_Master_Wr_BVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWID -core_signal_name AXI4_Master_Wr_AWID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWADDR -core_signal_name AXI4_Master_Wr_AWADDR 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWLEN -core_signal_name AXI4_Master_Wr_AWLEN 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWSIZE -core_signal_name AXI4_Master_Wr_AWSIZE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWBURST -core_signal_name AXI4_Master_Wr_AWBURST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWLOCK -core_signal_name AXI4_Master_Wr_AWLOCK 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWCACHE -core_signal_name AXI4_Master_Wr_AWCACHE 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWPROT -core_signal_name AXI4_Master_Wr_AWPROT 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name AWVALID -core_signal_name AXI4_Master_Wr_AWVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name WDATA -core_signal_name AXI4_Master_Wr_WDATA 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name WSTRB -core_signal_name AXI4_Master_Wr_WSTRB 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name WLAST -core_signal_name AXI4_Master_Wr_WLAST 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name WVALID -core_signal_name AXI4_Master_Wr_WVALID 
hdl_core_assign_bif_signal -hdl_core_name SYSTEM_ip -bif_name AXI4_Master -bif_signal_name BREADY -core_signal_name AXI4_Master_Wr_BREADY 

sd_update_instance -sd_name Libero_sd -instance_name SYSTEM_ip_0
sd_replace_component -sd_name Libero_sd -instance {SYSTEM_ip_0} -new_component {SYSTEM_ip%D:\Work\github\Simulink_HDL\hdl_prj\ipcore\SYSTEM_ip_v1_0\prj/hdl/SYSTEM_ip.v}
save_smartdesign -sd_name Libero_sd 
save_project
build_design_hierarchy
