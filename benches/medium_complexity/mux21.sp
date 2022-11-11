.include ./FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include
.include ./FreePDK45/osu_soc/lib/source/netlists/AND2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/NAND2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/OR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/NOR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/BUFX2.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/INVX1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/XOR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/XNOR2X1.pex.netlist
.option TEMP=27c
Vpower Vdd 0 1.1
Vgnd Vss 0 0
Vina Va 0 dc pulse (0 1.1 2n 1n 1n 24n 40n)
Vinb Vb 0 dc pulse (0 1.1 5n 1n 1n 26n 33n)
Vins Vs 0 dc pulse (0 1.1 5n 1n 1n 26n 28n)
Cloady Vy 0 0.00155103pF
XINVk Vs Vss Vdd Vk INVX1
XANDa1 Va Vk Vdd Vss Va1 AND2X1
XANDa2 Vb Vs Vdd Vss Va2 AND2X1
XORy Va1 Va2 Vdd Vss Vy OR2X1
.tran 0.1n 100n 0 1p
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 46.696929999999995 nW
