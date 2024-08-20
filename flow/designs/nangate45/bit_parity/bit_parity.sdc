###############################################################################

set sdc_version 2.1

set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm
###############################################################################
# 
# Units
# capacitive_load_unit           : 1 pF
# current_unit                   : 0.001 A
# resistance_unit                : 1 kOhm
# time_unit                      : 1 ns
# voltage_unit                   : 1 V
###############################################################################
set_operating_conditions -analysis_type on_chip_variation  -library [get_libs \
{tcbn22ullbwp30p140sgssg0p72vm40c_hm_lvf_p_ccs.db:tcbn22ullbwp30p140sgssg0p72vm40c_ccs}]
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name HCLK -period 0.5 -waveform { 0 0.25 } [get_ports {HCLK}]
set_clock_uncertainty  0.1 [get_clocks {HCLK}]
set_clock_transition -rise -max  0.1 [get_clocks {HCLK}]
set_clock_transition -fall -max  0.1 [get_clocks {HCLK}]
set_clock_transition -rise -min  0.1 [get_clocks {HCLK}]
set_clock_transition -fall -min  0.1 [get_clocks {HCLK}]

###############################################################################
# External Delay Information
###############################################################################
set_input_delay  0.25 [get_ports {HADDR}]
set_input_delay  0.25 [get_ports {HSIZE}]
set_input_delay  0.25 [get_ports {HTRANS}]
set_input_delay  0.25 [get_ports {HWDATA}]
set_input_delay  0.25 [get_ports {HWRITE}]
set_input_delay  0.25 [get_ports {HSEL}]
set_input_delay  0.25 [get_ports {HREADY}]
set_output_delay  0.25 [get_ports {HREADYOUT}]
set_output_delay  0.25 [get_ports {HRESP}]
set_output_delay  0.25 [get_ports {HRDATA}]

set_load -pin_load  0.5 [get_ports {HADDR}]
set_load -pin_load  0.5 [get_ports {HSIZE}]
set_load -pin_load  0.5 [get_ports {HTRANS}]
set_load -pin_load  0.5 [get_ports {HWDATA}]
set_load -pin_load  0.5 [get_ports {HWRITE}]
set_load -pin_load  0.5 [get_ports {HSEL}]
set_load -pin_load  0.5 [get_ports {HREADY}]

set_input_transition -rise -min  0.1 [get_ports {HADDR}]
set_input_transition -fall -min  0.1 [get_ports {HADDR}]
set_input_transition -rise -max  0.1 [get_ports {HADDR}]
set_input_transition -fall -max  0.1 [get_ports {HADDR}]
set_input_transition -rise -min  0.1 [get_ports {HSIZE}]
set_input_transition -fall -min  0.1 [get_ports {HSIZE}]
set_input_transition -rise -max  0.1 [get_ports {HSIZE}]
set_input_transition -fall -max  0.1 [get_ports {HSIZE}]
set_input_transition -rise -min  0.1 [get_ports {HTRANS}]
set_input_transition -fall -min  0.1 [get_ports {HTRANS}]
set_input_transition -rise -max  0.1 [get_ports {HTRANS}]
set_input_transition -fall -max  0.1 [get_ports {HTRANS}]
set_input_transition -rise -min  0.1 [get_ports {HWDATA}]
set_input_transition -fall -min  0.1 [get_ports {HWDATA}]
set_input_transition -rise -max  0.1 [get_ports {HWDATA}]
set_input_transition -fall -max  0.1 [get_ports {HWDATA}]
set_input_transition -rise -min  0.1 [get_ports {HWRITE}]
set_input_transition -fall -min  0.1 [get_ports {HWRITE}]
set_input_transition -rise -max  0.1 [get_ports {HWRITE}]
set_input_transition -fall -max  0.1 [get_ports {HWRITE}]
set_input_transition -rise -min  0.1 [get_ports {HSEL}]
set_input_transition -fall -min  0.1 [get_ports {HSEL}]
set_input_transition -rise -max  0.1 [get_ports {HSEL}]
set_input_transition -fall -max  0.1 [get_ports {HSEL}]
set_input_transition -rise -min  0.1 [get_ports {HREADY}]
set_input_transition -fall -min  0.1 [get_ports {HREADY}]
set_input_transition -rise -max  0.1 [get_ports {HREADY}]
set_input_transition -fall -max  0.1 [get_ports {HREADY}]


set_input_transition -rise -min  0.1 [get_ports {HCLK}]
set_input_transition -fall -min  0.1 [get_ports {HCLK}]
set_input_transition -rise -max  0.1 [get_ports {HCLK}]
set_input_transition -fall -max  0.1 [get_ports {HCLK}]

