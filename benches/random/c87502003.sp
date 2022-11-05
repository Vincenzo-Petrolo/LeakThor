.include ./FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include
.include ./FreePDK45/osu_soc/lib/source/netlists/AND2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/NAND2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/OR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/NOR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/BUFX2.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/INVX1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/XOR2X1.pex.netlist
.include ./FreePDK45/osu_soc/lib/source/netlists/XNOR2X1.pex.netlist
.option TEMP=25c
Vpower Vdd 0 1.1
Vgnd Vss 0 0
Vin0 V0 0 dc pulse (0 1.1 2n 1n 1n 1n 2n)
Vin1 V1 0 dc pulse (0 1.1 5n 1n 1n 9n 15n)
Vin2 V2 0 dc pulse (0 1.1 10n 1n 1n 7n 8n)
Cload14 V14 0 1nF
XNOR3 V2 V3 V2 Vss Vdd XNOR2X1
XAND4 V2 V2 Vdd Vss V4 AND2X1
XNAND5 V2 Vss V1 V5 Vdd NAND2X1
XAND6 V2 V3 Vdd Vss V6 AND2X1
XBUF7 V7 Vss Vdd V5 BUFX2
XNOR8 V1 V8 V3 Vss Vdd XNOR2X1
XNOR9 V0 V9 V2 Vss Vdd XNOR2X1
XNOR10 V4 V10 V3 Vss Vdd XNOR2X1
XINV11 V1 Vss Vdd V11 INVX1
XNAND12 V7 Vss V9 V12 Vdd NAND2X1
XOR13 V0 V13 V10 Vdd Vss XOR2X1
XBUF14 V14 Vss Vdd V5 BUFX2
.tran 1n 1u
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
