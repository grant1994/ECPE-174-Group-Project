if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work [pwd]/gridLED.sv
vlog -sv -work work [pwd]/testGrid.sv

vsim testGrid

add wave * 

view structure
view signals

run 5000 ns
