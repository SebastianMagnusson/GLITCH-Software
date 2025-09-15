onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Func_test1_wrapper

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {Func_test1_wrapper.udo}

run 1000ns

quit -force
