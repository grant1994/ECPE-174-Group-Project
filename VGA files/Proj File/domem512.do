vlog -sv -work work [pwd]/testMem.sv
vlog -sv -work work [pwd]/TB_mem512.sv

vsim TB_mem512

add wave *

view structure
view signals

run 10000 ns

