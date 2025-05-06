# Setup Path for library
set_db init_lib_search_path /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing/

#setup script path
set_db script_search_path /home/d/deirmentz/VLSI_ASIC/Script/

#setup hdl path
set_db init_hdl_search_path /home/d/deirmentz/VLSI_ASIC/Risc-vVerilog/

#Setup timing library
set_db library  /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib
#end

#Setup lef library
set_db lef_library {
    /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_tech.lef
    /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/lef/gsclib045_macro.lef}
#end

#Setup qrc library
read_qrc /mnt/apps/prebuilt/eda/designkits/GPDK/gsclib045/lan/flow/t1u1/reference_libs/GPDK045/gsclib045_svt_v4.4/gsclib045/qrc/qx/gpdk045.tch
#end

# Setup hdl file
read_hdl picorv32.v


# Elaborate
elaborate picorv32

# Check design
check_design -all > home/d/deirmentz/VLSI_ASIC/Exercises/Exercise1/Exercise1_Step3_Check_Design.txt

# Check timing intent
check_timing_intent > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_3/Checks/Exercise9_Step3_Check_Timing_Intent.txt

# Read the sdc file
read_sdc /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise1/Step_4/Exercise_1_Step_4_Constraints.sdc


#DFT --- Design for Testability
set_db / .dft_scan_style muxed_scan
set_db / .dft_prefix DFT_
set_db / .dft_identify_top_level_test_clocks true
set_db / .dft_identify_test_signals true
set_db / .dft_identify_internal_test_clocks false
set_db / .use_scan_seqs_for_non_dft false

set_db "design:picorv32" .dft_scan_map_mode tdrc_pass
set_db "design:picorv32" .dft_connect_shift_enable_during_mapping tie_off
set_db "design:picorv32" .dft_connect_scan_data_pins_during_mapping loopback
set_db "design:picorv32" .dft_scan_output_preference auto
set_db "design:picorv32" .dft_lockup_element_type preferred_level_sensitive
set_db "design:picorv32" .dft_mix_clock_edges_in_scan_chains true

define_test_clock -name scanclk -period 20000 clk
define_shift_enable -name se -active high -create_port se
define_test_mode -name test_mode -active high -create_port test_mode
define_scan_chain -name top_chain -sdi scan_in -sdo scan_out -shift_enable se -create_ports

#DFT CHECKS
check_dft_rules > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Checks_DFT/Before_Gen/Exercise9_DFT_rules.txt
report_scan_registers > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Reports_DFT/Before_Gen/Exercise9_DFT_scan_registers.txt
report_scan_setup > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Reports_DFT/Before_Gen/Exercise9_DFT_scan_setup.txt

check_dft_rules -advanced > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Checks_DFT/Before_Gen/Exercise9_DFT_rules_advanced.txt
connect_scan_chains -auto_create_chains 
report_scan_chains > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Reports_DFT/Before_Gen/Exercise9_DFT_scan_chains.txt

# Check timing intent
check_timing_intent > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Checks/Exercise9_Step5_Check_Timing_Intent.txt

# Setting for innovus
#set_db / .use_scan_seqs_for_non_dft false

# Synthesis Generic
syn_generic 
# Report Area
report_area > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Area_gen.txt
# Report Gates
report_gates > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Gates_gen.txt
# Report Timing
report_timing > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Timing_gen.txt
# Report Power
report_power > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Power_gen.txt
# Report Quality of Results
report_qor > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_QoR_gen.txt

# Synthesis Mapping
syn_map
# Report Area
report_area > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Area_map.txt
# Report Gates
report_gates > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Gates_map.txt
# Report Timing
report_timing > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Timing_map.txt
# Report Power
report_power > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Power_map.txt
# Report Quality of Results
report_qor > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_QoR_map.txt


# Synthesis Optimization
syn_opt
# Report Area
report_area > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Area.txt
# Report Gates
report_gates > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Gates.txt
# Report Timing
report_timing > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Timing.txt
# Report Power
report_power > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_Power.txt
# Report Quality of Results
report_qor > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Reports/Step5_Report_QoR.txt


#DFT Checks
check_dft_rules > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Checks_DFT/After_Gen/Exercise9_DFT_rules.txt
report_scan_registers > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Reports_DFT/After_Gen/Exercise9_DFT_scan_registers.txt
report_scan_setup > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Reports_DFT/After_Gen/Exercise9_DFT_scan_setup.txt

check_dft_rules -advanced > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Checks_DFT/After_Gen/Exercise9_DFT_rules_advanced.txt
connect_scan_chains -auto_create_chains 
report_scan_chains > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step1-7/Reports_DFT/After_Gen/Exercise9_DFT_scan_chains.txt

# Check timing intent
check_timing_intent > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_7/Checks/Exercise9_Step5_Check_Timing_Intent.txt

# Export Design
#-------------# Optional steps
write_hdl > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Export_Design/Exercise9_Step5_Design.v
write_sdc > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Export_Design/Exercise9_Step5_Constraints.sdc
write_script > /home/d/deirmentz/VLSI_ASIC/Exercises/Exercise9/Step_5/Export_Design/Exercise9_Step5_Constraints.g

# Generate genus_inv_des folder
write_design -innovus picorv32
