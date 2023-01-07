# TCL file to be Executed by Libero
# module CameraIO_ip
 
# Add HDL Source Files to Project
import_files -hdl_source hdl/CameraIO_ip_src_RADAR0_i2c_slave.v 
import_files -hdl_source hdl/CameraIO_ip_src_RADAR0_MIPI_I2C.v 
import_files -hdl_source hdl/CameraIO_ip_src_RADAR0_i2c_slave_block.v 
import_files -hdl_source hdl/CameraIO_ip_src_RADAR1_MIPI_I2C.v 
import_files -hdl_source hdl/CameraIO_ip_src_i2c_slave_serializer.v 
import_files -hdl_source hdl/CameraIO_ip_src_Chart.v 
import_files -hdl_source hdl/CameraIO_ip_src_sclDeb.v 
import_files -hdl_source hdl/CameraIO_ip_src_sdaDeb.v 
import_files -hdl_source hdl/CameraIO_ip_src_TCA6424A.v 
import_files -hdl_source hdl/CameraIO_ip_src_i2c_slave_serializer_block.v 
import_files -hdl_source hdl/CameraIO_ip_src_pulse.v 
import_files -hdl_source hdl/CameraIO_ip_src_sco_slave_sel.v 
import_files -hdl_source hdl/CameraIO_ip_src_sdo_master_sel.v 
import_files -hdl_source hdl/CameraIO_ip_src_TCA9548A.v 
import_files -hdl_source hdl/CameraIO_ip_src_CameraIO.v 
import_files -hdl_source hdl/CameraIO_ip_reset_sync.v 
import_files -hdl_source hdl/CameraIO_ip_dut.v 
import_files -hdl_source hdl/CameraIO_ip_addr_decoder.v 
import_files -hdl_source hdl/CameraIO_ip_SimpleDualPortRAM_generic.v 
import_files -hdl_source hdl/CameraIO_ip_rdfifo_data.v 
import_files -hdl_source hdl/CameraIO_ip_SimpleDualPortRAM_singlebit.v 
import_files -hdl_source hdl/CameraIO_ip_rdfifo_last.v 
import_files -hdl_source hdl/CameraIO_ip_rdfifo_rid.v 
import_files -hdl_source hdl/CameraIO_ip_axi4_module.v 
import_files -hdl_source hdl/CameraIO_ip_axi4.v 
import_files -hdl_source hdl/CameraIO_ip.v 
build_design_hierarchy


# Create HDL Core to Instiantiate in SmartDesign
create_hdl_core -file hdl/CameraIO_ip.v -module CameraIO_ip 

## AXI4 Bus
# Connection point for Bus Interface
hdl_core_add_bif -hdl_core_name CameraIO_ip -bif_definition {AXI4:AMBA:AMBA4:slave} -bif_name AXI4
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWID -core_signal_name AXI4_AWID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWADDR -core_signal_name AXI4_AWADDR 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWLEN -core_signal_name AXI4_AWLEN 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWSIZE -core_signal_name AXI4_AWSIZE 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWBURST -core_signal_name AXI4_AWBURST 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWLOCK -core_signal_name AXI4_AWLOCK 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWCACHE -core_signal_name AXI4_AWCACHE 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWPROT -core_signal_name AXI4_AWPROT 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWVALID -core_signal_name AXI4_AWVALID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name WDATA -core_signal_name AXI4_WDATA 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name WSTRB -core_signal_name AXI4_WSTRB 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name WLAST -core_signal_name AXI4_WLAST 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name WVALID -core_signal_name AXI4_WVALID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name BREADY -core_signal_name AXI4_BREADY 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARID -core_signal_name AXI4_ARID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARADDR -core_signal_name AXI4_ARADDR 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARLEN -core_signal_name AXI4_ARLEN 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARSIZE -core_signal_name AXI4_ARSIZE 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARBURST -core_signal_name AXI4_ARBURST 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARLOCK -core_signal_name AXI4_ARLOCK 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARCACHE -core_signal_name AXI4_ARCACHE 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARPROT -core_signal_name AXI4_ARPROT 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARVALID -core_signal_name AXI4_ARVALID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name RREADY -core_signal_name AXI4_RREADY 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name AWREADY -core_signal_name AXI4_AWREADY 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name WREADY -core_signal_name AXI4_WREADY 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name BID -core_signal_name AXI4_BID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name BRESP -core_signal_name AXI4_BRESP 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name BVALID -core_signal_name AXI4_BVALID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name ARREADY -core_signal_name AXI4_ARREADY 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name RID -core_signal_name AXI4_RID 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name RDATA -core_signal_name AXI4_RDATA 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name RRESP -core_signal_name AXI4_RRESP 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name RLAST -core_signal_name AXI4_RLAST 
hdl_core_assign_bif_signal -hdl_core_name CameraIO_ip -bif_name AXI4 -bif_signal_name RVALID -core_signal_name AXI4_RVALID 

build_design_hierarchy
