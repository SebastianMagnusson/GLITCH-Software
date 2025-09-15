vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../SRAM_Breadboard_Test6.srcs/sources_1/new/BF_Data_Collector_Draft1.vhd" \
"../../../SRAM_Breadboard_Test6.srcs/sources_1/new/Read6.vhd" \
"../../../SRAM_Breadboard_Test6.srcs/sources_1/new/Write6.vhd" \
"../../../../SRAM_Breadboard_Test4/SRAM_Breadboard_Test4.srcs/sources_1/new/RW_ROUTER4.vhd" \
"../../../../../UART/Read_GNSS/Read_GNSS.srcs/sources_1/new/Switchmod.vhd" \
"../../../../../Code/BITFLIP_formatter.vhd" \
"../../../../../Code/I2C_full_sensor_data_fetcher.vhd" \
"../../../../../Code/TM_packet_sender.vhd" \
"../../../../../UART/UART_Test/UART_Test.srcs/sources_1/new/UART_TXmod.vhd" \
"../../../../../Code/I2Cmod.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_BF_Data_Collector_Dr_0_0/sim/Func_test1_BF_Data_Collector_Dr_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_Read6_0_0/sim/Func_test1_Read6_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_Write6_0_0/sim/Func_test1_Write6_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_RW_ROUTER4_0_0/sim/Func_test1_RW_ROUTER4_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_Switchmod_0_0/sim/Func_test1_Switchmod_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_BF_formatter_0_0/sim/Func_test1_BF_formatter_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_I2C_full_sensor_data_0_0/sim/Func_test1_I2C_full_sensor_data_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_TM_packet_sender_0_0/sim/Func_test1_TM_packet_sender_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_UART_TXmod_0_0/sim/Func_test1_UART_TXmod_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/ip/Func_test1_I2Cmod_0_0/sim/Func_test1_I2Cmod_0_0.vhd" \
"../../../SRAM_Breadboard_Test6.gen/sources_1/bd/Func_test1/sim/Func_test1.vhd" \
"../../../SRAM_Breadboard_Test6.srcs/sources_1/imports/hdl/Func_test1_wrapper.vhd" \


