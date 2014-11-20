vlog -sv -work work [pwd]/arrowKeys.sv
vlog -sv -work work [pwd]/TB_arrowKeys.sv
vsim TB_arrowKeys

add wave *

view structure
view signals

run 4000 ns