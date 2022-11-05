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
Vin0 V0 0 dc pulse (0 1.1 10n 1n 1n 3n 3n)
Vin1 V1 0 dc pulse (0 1.1 1n 1n 1n 8n 15n)
Vin2 V2 0 dc pulse (0 1.1 3n 1n 1n 3n 3n)
Vin3 V3 0 dc pulse (0 1.1 9n 1n 1n 4n 6n)
Vin4 V4 0 dc pulse (0 1.1 6n 1n 1n 8n 14n)
Vin5 V5 0 dc pulse (0 1.1 9n 1n 1n 5n 5n)
Vin6 V6 0 dc pulse (0 1.1 8n 1n 1n 2n 4n)
Vin7 V7 0 dc pulse (0 1.1 4n 1n 1n 4n 7n)
Vin8 V8 0 dc pulse (0 1.1 6n 1n 1n 4n 6n)
Vin9 V9 0 dc pulse (0 1.1 1n 1n 1n 5n 9n)
Vin10 V10 0 dc pulse (0 1.1 5n 1n 1n 1n 2n)
Vin11 V11 0 dc pulse (0 1.1 5n 1n 1n 6n 7n)
Vin12 V12 0 dc pulse (0 1.1 3n 1n 1n 5n 7n)
Vin13 V13 0 dc pulse (0 1.1 5n 1n 1n 9n 12n)
Vin14 V14 0 dc pulse (0 1.1 7n 1n 1n 1n 2n)
Vin15 V15 0 dc pulse (0 1.1 1n 1n 1n 4n 5n)
Vin16 V16 0 dc pulse (0 1.1 4n 1n 1n 2n 3n)
Vin17 V17 0 dc pulse (0 1.1 6n 1n 1n 7n 7n)
Vin18 V18 0 dc pulse (0 1.1 2n 1n 1n 10n 15n)
Vin19 V19 0 dc pulse (0 1.1 4n 1n 1n 8n 14n)
Cload28 V28 0 1nF
XOR20 V19 V20 V18 Vdd Vss XOR2X1
XNOR21 V12 Vdd V1 V21 Vss NOR2X1
XAND22 V14 V0 Vdd Vss V22 AND2X1
XNOR23 V12 V23 V19 Vss Vdd XNOR2X1
XBUF24 V24 Vss Vdd V2 BUFX2
XNOR25 V14 V25 V3 Vss Vdd XNOR2X1
XINV26 V0 Vss Vdd V26 INVX1
XBUF27 V27 Vss Vdd V10 BUFX2
XNOR28 V2 V28 V21 Vss Vdd XNOR2X1
.tran 1n 1u
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
