vlog -sv -work work [pwd]/compareCards.sv
vlog -sv -work work [pwd]/testCompare.sv
vlog -sv -work work [pwd]/mem64.sv

vsim testCompare

add wave *

view structure
view signals

run 10000 ns
