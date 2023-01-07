/*
 * File Name:         hdl_prj\ipcore\CameraIO_ip_v1_0\include\CameraIO_ip_addr.h
 * Description:       C Header File
 * Created:           2023-01-07 18:51:44
*/

#ifndef CAMERAIO_IP_H_
#define CAMERAIO_IP_H_

#define  IPCore_Reset_CameraIO_ip                0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Timestamp_CameraIO_ip            0x8  //contains unique IP timestamp (yymmddHHMM): 2301071851
#define  AXI_ExpanderValue_Data_CameraIO_ip      0x100  //data register for Outport AXI_ExpanderValue
#define  AXI_CameraIO_Status_Data_CameraIO_ip    0x104  //data register for Outport AXI_CameraIO_Status
#define  AXI_CameraIO_Control_Data_CameraIO_ip   0x108  //data register for Inport AXI_CameraIO_Control
#define  AXI_MuxerValue_Data_CameraIO_ip         0x10C  //data register for Outport AXI_MuxerValue

#endif /* CAMERAIO_IP_H_ */
