% 
%  Copyright (c) 2023, Alexei Evsenin, evsenin@gmail.com
%   
%% dependencies
%% Input data and constants
% constants
model_time_step = 1/80e6; % 1/80 MHz
%% AXI4 init data
AXI_DDR_CONTROL = Simulink.Parameter;
AXI_DDR_CONTROL.Value = uint32(0); 
AXI_DDR_CONTROL.CoderInfo.StorageClass = 'ExportedGlobal';

AXI_PWR_CONTROL = Simulink.Parameter;
AXI_PWR_CONTROL.Value = uint32(0); 
AXI_PWR_CONTROL.CoderInfo.StorageClass = 'ExportedGlobal';

AXI_XAVIER_CONTROL = Simulink.Parameter;
AXI_XAVIER_CONTROL.Value = uint32(0); 
AXI_XAVIER_CONTROL.CoderInfo.StorageClass = 'ExportedGlobal';

AXI_CC_SPI_Wr = Simulink.Parameter;
AXI_CC_SPI_Wr.Value = uint32(0);
AXI_CC_SPI_Wr.CoderInfo.StorageClass = 'ExportedGlobal';

AXI_CC_CONTROL = Simulink.Parameter;
AXI_CC_CONTROL.Value = uint32(0);
AXI_CC_CONTROL.CoderInfo.StorageClass = 'ExportedGlobal';

AXI_MonADC_SPI_Wr = Simulink.Parameter;
AXI_MonADC_SPI_Wr.Value = uint32(0);
AXI_MonADC_SPI_Wr.CoderInfo.StorageClass = 'ExportedGlobal';

AXI_MonADC_CONTROL = Simulink.Parameter;
AXI_MonADC_CONTROL.Value = uint32(0);
AXI_MonADC_CONTROL.CoderInfo.StorageClass = 'ExportedGlobal';

%% AD9543
% don.t forget set registe 0 to 0xBD = 0x3C(4-wire) with soft reset
% OUT0A 0B 1A 1C AC coupled 50Om to gnd differential => 
% 0x10D7,8 0x14D7,8 = 0x5 (HCSL 15mA(or less)) 
% OUT0C 50Om to vcc transformator single ended => 
% 0x10D9 = 0xC (CML 15mA(or less) SE) 
AD9545_tmp = uint16(table2array(readtable("AD9545/cronos45refB.txt")));
if AD9545_tmp(1,1) == 0
    AD9545_tmp(1,:) = uint16([0 0xBD]); %replace with soft reset
else
    AD9545_tmp = vertcat(uint16([0 0xBD]), AD9545_tmp); %add soft reset
end
AD9545_INIT = bitconcat(ufi(AD9545_tmp(:,1),16,0),ufi(AD9545_tmp(:,2),8,0));

%% AD7173-8
% https://www.analog.com/media/en/technical-documentation/data-sheets/AD7173-8.pdf
%
AD7173_8_IFMODE = ufi(0x0200C0,24,0); % CONTREAD + DATA_STAT
AD7173_8_INIT_tmp = uint16([
0x0010 bin2dec('1 000 00 00000 00001') %CH0 EN AIN0=P + AIN1=N
0x0011 bin2dec('1 000 00 00010 00011') %CH1 EN AIN2=P + AIN3=N
0x0012 bin2dec('1 000 00 00100 00101') %CH2 EN AIN4=P + AIN5=N
0x0013 bin2dec('1 000 00 00110 00111') %CH3 EN AIN6=P + AIN7=N
0x0014 bin2dec('1 000 00 01000 01001') %CH4 EN AIN8=P + AIN9=N
0x0015 bin2dec('1 000 00 01010 01011') %CH5 EN AIN10=P + AIN11=N
0x0016 bin2dec('1 000 00 01100 01101') %CH6 EN AIN12=P + AIN13=N
0x0017 bin2dec('1 000 00 01110 01111') %CH7 EN AIN14=P + AIN15=N
%SETUP CONFIGURATION REGISTER 0: 
% Offset binary coded output, Reference input buffers disabled, 
% Analog input buffers enabled, BURNOUT disabled, BUFCHOPMAX0 disabled
% Internal 2.5 V reference; this reference must also be enabled in the ADC mode register
%0x0020 bin2dec('000 1 00 11 0 0 10 0000') %SETUPCON0
%try ext 5.5V reference
0x0020 bin2dec('000 1 11 11 0 0 00 0000')
0x0028 0 %FILTCON0
0x0006 bin2dec('0000 1100 0000 0000') %GPIO CONFIGURATION REGISTER
%try ext 5.5V reference
%0x0001 bin2dec('1 0 0 00 000 0 000 11 00') %ADCMODE
0x0001 bin2dec('0 0 0 00 000 0 000 11 00')
0x0002 bin2dec('000 0 0 0 0 0 0 1 0 0 00 0 0') %IFMODE 
]);
AD7173_8_INIT = bitconcat(ufi(AD7173_8_INIT_tmp(:,1),8,0),ufi(AD7173_8_INIT_tmp(:,2),16,0));

% measured data read frequency by osc - counter on valid
AD7173_8_frequncy_per_ch = 6.2113202e+03 / 8;

%%
hdlsetuptoolpath('ToolName', 'Microsemi Libero SoC', 'ToolPath', 'c:\Microchip\Libero_SoC_v2022.3\Designer\bin\libero.exe')
