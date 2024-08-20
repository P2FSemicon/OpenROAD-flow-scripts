export DESIGN_NAME = bit_parity
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NAME)/bit_parity.v #verilog file
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NAME)/bit_parity.sdc #sdc file
export ABC_AREA      = 1 # What is this? - Confirm with Kedar & Balaji

# Adders degrade GCD - What is this? 
export ADDER_MAP_FILE :=  

export CORE_UTILIZATION ?= 55 # ? = looks for a pre-assigned value.
export PLACE_DENSITY_LB_ADDON = 0.20
export TNS_END_PERCENT        = 100
export REMOVE_CELLS_FOR_EQY   = TAPCELL*

