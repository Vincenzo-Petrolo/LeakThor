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
Vin0 V0 0 dc pulse (0 1.1 4n 1n 1n 1n 1n)
Vin1 V1 0 dc pulse (0 1.1 3n 1n 1n 6n 6n)
Vin2 V2 0 dc pulse (0 1.1 9n 1n 1n 3n 6n)
Vin3 V3 0 dc pulse (0 1.1 8n 1n 1n 3n 4n)
Vin4 V4 0 dc pulse (0 1.1 1n 1n 1n 7n 7n)
Cload34 V34 0 1nF
XAND5 V2 V2 Vdd Vss V5 AND2X1
XBUF6 V6 Vss Vdd V4 BUFX2
XAND7 V2 V0 Vdd Vss V7 AND2X1
XBUF8 V8 Vss Vdd V2 BUFX2
XNAND9 V7 Vss V1 V9 Vdd NAND2X1
XOR10 V4 V6 Vdd Vss V10 OR2X1
XOR11 V10 V9 Vdd Vss V11 OR2X1
XAND12 V9 V8 Vdd Vss V12 AND2X1
XNOR13 V2 V13 V3 Vss Vdd XNOR2X1
XNOR14 V7 V14 V6 Vss Vdd XNOR2X1
XNOR15 V10 V15 V13 Vss Vdd XNOR2X1
XOR16 V1 V2 Vdd Vss V16 OR2X1
XOR17 V0 V3 Vdd Vss V17 OR2X1
XNAND18 V5 Vss V6 V18 Vdd NAND2X1
XNAND19 V9 Vss V6 V19 Vdd NAND2X1
XNAND20 V8 Vss V1 V20 Vdd NAND2X1
XINV21 V9 Vss Vdd V21 INVX1
XNAND22 V2 Vss V15 V22 Vdd NAND2X1
XNOR23 V6 V23 V10 Vss Vdd XNOR2X1
XNAND24 V11 Vss V20 V24 Vdd NAND2X1
XOR25 V17 V25 V9 Vdd Vss XOR2X1
XINV26 V19 Vss Vdd V26 INVX1
XOR27 V16 V17 Vdd Vss V27 OR2X1
XAND28 V10 V6 Vdd Vss V28 AND2X1
XNAND29 V3 Vss V25 V29 Vdd NAND2X1
XBUF30 V30 Vss Vdd V7 BUFX2
XNAND31 V14 Vss V6 V31 Vdd NAND2X1
XOR32 V7 V25 Vdd Vss V32 OR2X1
XAND33 V15 V2 Vdd Vss V33 AND2X1
XOR34 V8 V34 V1 Vdd Vss XOR2X1
.tran 1n 1u
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
