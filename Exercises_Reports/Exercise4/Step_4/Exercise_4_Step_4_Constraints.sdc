#SDC Restrictions File for Synthesis#

#set time unit −nanoseconds 1.0

#1) Create clock with 50 % duty cycle, Frequency f=400MHz Period T=2.5ns, name = clk.
create_clock -name clk -period 2.5 -waveform {0 1.25} [get_ports clk]
#2) Set clock latency = 250 ps.
set_clock_latency -source 0.25 [get_clocks clk]
#3) Set clock uncertainty = 15 ps for setup and 10 ps for hold.
set_clock_uncertainty -setup 0.015 [get_clocks clk]
set_clock_uncertainty -hold 0.01 [get_clocks clk]

#4) Set clock rise and fall = 1% of total period.
set_clock_transition 0.025 [get_clocks clk]

#5) Set 0.75ns output delay for SETUP time.
set_output_delay -max 0.75 -clock clk -network_latency_included [all_outputs]
#6) Set 0.25ns output delay for HOLD time.
set_output_delay -min 0.25 -clock clk -network_latency_included [all_outputs]

#7) Set capacity for SETUP time analysis = 0.4pF.
set_load 0.4 -max [all_outputs]
#8) Set capacity for HOLD time analysis = 0.05pF.
set_load 0.05 -min [all_outputs]

#9) Set 0.75ns input delay for SETUP time.
set_input_delay -max 0.75 -clock clk -network_latency_included [all_inputs]
#10) Set 0.25ns input delay for HOLD time.
set_input_delay -min 0.25 -clock clk -network_latency_included [all_inputs]

#11) Set input driving cell: BUFX4 for SETUP and BUFX8 for HOLD.
set_driving_cell -max -lib_cell BUFX4 [all_inputs]
set_driving_cell -min -lib_cell BUFX8 [all_inputs]
