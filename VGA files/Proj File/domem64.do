vlog -sv -work work [pwd]/mem64.sv
vlog -sv -work work [pwd]/TB_mem64.sv

vsim TB_mem64

add wave *

view structure
view signals

run 4000 ns