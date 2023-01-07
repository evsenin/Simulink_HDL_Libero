% 
%  Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
%   
%% dependencies
%% Input data and constants
% constants
model_time_step = 1/80e6; % 1/80 MHz
%% AXI4 init data
AXI_CameraIO_Control = Simulink.Parameter;
AXI_CameraIO_Control.Value = uint32(0);
AXI_CameraIO_Control.CoderInfo.StorageClass = 'ExportedGlobal';
%%
hdlsetuptoolpath('ToolName', 'Microsemi Libero SoC', 'ToolPath', 'c:\Microchip\Libero_SoC_v2022.3\Designer\bin\libero.exe')
