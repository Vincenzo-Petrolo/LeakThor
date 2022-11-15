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
Vina Va 0 dc pulse (0 1.1 4n 1n 1n 30n 40n)
Vinb Vb 0 dc pulse (0 1.1 5n 1n 1n 30n 59n)
Vinc Vc 0 dc pulse (0 1.1 7n 1n 1n 28n 30n)
Cloads Vs 0 0.00155103pF
Cloadc Vc 0 0.00155103pF
XORd Vb Vd Va Vdd Vss XOR2X1
XORs Vc Vs Vd Vdd Vss XOR2X1
XANDe Vd Vc Vdd Vss Ve AND2X1
XANDf Va Vb Vdd Vss Vf AND2X1
XORc Ve Vf Vdd Vss Vc OR2X1
.tran 0.1n 100n 0 1p
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 135.2537 nW
