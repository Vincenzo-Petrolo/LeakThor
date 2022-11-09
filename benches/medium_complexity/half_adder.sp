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
Vina Va_ 0 dc pulse (0 1.1 7n 1n 1n 21n 39n)
XBUFINa Va Vss Vdd Va_ BUFX2
Vinb Vb_ 0 dc pulse (0 1.1 8n 1n 1n 23n 38n)
XBUFINb Vb Vss Vdd Vb_ BUFX2
Cloadc Vc 0 0.00155103pF
Cloads Vs 0 0.00155103pF
XANDc Va Vb Vdd Vss Vc AND2X1
XORs Vb Vs Va Vdd Vss XOR2X1
.tran 0.1n 100n
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 100.2623 nW
