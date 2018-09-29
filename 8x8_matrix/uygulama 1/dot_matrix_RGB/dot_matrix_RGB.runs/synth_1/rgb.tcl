# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/basys3_demo_board/VHDL_projeleri/dot_matrix/dot_matrix_RGB/dot_matrix_RGB.cache/wt [current_project]
set_property parent.project_path C:/basys3_demo_board/VHDL_projeleri/dot_matrix/dot_matrix_RGB/dot_matrix_RGB.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib C:/basys3_demo_board/VHDL_projeleri/dot_matrix/dot_matrix_RGB/dot_matrix_RGB.srcs/sources_1/new/kareler_son_hali.vhd
read_xdc C:/basys3_demo_board/VHDL_projeleri/dot_matrix/dot_matrix_RGB/dot_matrix_RGB.srcs/constrs_1/new/kareler_son_hali_cons.xdc
set_property used_in_implementation false [get_files C:/basys3_demo_board/VHDL_projeleri/dot_matrix/dot_matrix_RGB/dot_matrix_RGB.srcs/constrs_1/new/kareler_son_hali_cons.xdc]

synth_design -top rgb -part xc7a35tcpg236-1
write_checkpoint -noxdef rgb.dcp
catch { report_utilization -file rgb_utilization_synth.rpt -pb rgb_utilization_synth.pb }