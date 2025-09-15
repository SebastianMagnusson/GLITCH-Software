transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Func_test1_wrapper  -L xil_defaultlib -L secureip -O5 xil_defaultlib.Func_test1_wrapper

do {Func_test1_wrapper.udo}

run 1000ns

endsim

quit -force
