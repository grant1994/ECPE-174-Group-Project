vlog -sv -work work [pwd]/draw.sv
vlog -sv -work work [pwd]/TB_draw.sv
vlog -sv -work work [pwd]/circle.sv
vlog -sv -work work [pwd]/dualPortMem.sv
vsim TB_draw

add wave *

view structure
view signals

run 4000 ns