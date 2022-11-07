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
Vin0 V0_ 0 dc pulse (0 1.1 9n 1n 1n 24n 38n)
XBUFIN0 V0 Vss Vdd V0_ BUFX2
Vin1 V1_ 0 dc pulse (0 1.1 5n 1n 1n 22n 43n)
XBUFIN1 V1 Vss Vdd V1_ BUFX2
Cload5 V5 0 0.00155103pF
XINV2 V0 Vss Vdd V2 INVX1
XNOR3 V1 Vdd V1 V3 Vss NOR2X1
XINV4 V1 Vss Vdd V4 INVX1
XNAND5 V1 Vss V1 V5 Vdd NAND2X1
.tran 0.1n 100n
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 49.90163999999999 nW
