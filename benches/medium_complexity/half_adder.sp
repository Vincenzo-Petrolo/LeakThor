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
Vina Va 0 dc pulse (0 1.1 1n 1n 1n 27n 36n)
Vinb Vb 0 dc pulse (0 1.1 1n 1n 1n 20n 22n)
Cloadc Vc 0 0.00155103pF
Cloads Vs 0 0.00155103pF
XANDc Va Vb Vdd Vss Vc AND2X1
XORs Vb Vs Va Vdd Vss XOR2X1
.tran 0.1n 100n 0 1p
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 60.7551 nW