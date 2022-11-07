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
Vin0 V0_ 0 dc pulse (0 1.1 7n 1n 1n 22n 37n)
XBUFIN0 V0 Vss Vdd V0_ BUFX2
Vin1 V1_ 0 dc pulse (0 1.1 1n 1n 1n 25n 43n)
XBUFIN1 V1 Vss Vdd V1_ BUFX2
Vin2 V2_ 0 dc pulse (0 1.1 7n 1n 1n 20n 25n)
XBUFIN2 V2 Vss Vdd V2_ BUFX2
Vin3 V3_ 0 dc pulse (0 1.1 4n 1n 1n 26n 34n)
XBUFIN3 V3 Vss Vdd V3_ BUFX2
Vin4 V4_ 0 dc pulse (0 1.1 10n 1n 1n 29n 46n)
XBUFIN4 V4 Vss Vdd V4_ BUFX2
Vin5 V5_ 0 dc pulse (0 1.1 2n 1n 1n 26n 46n)
XBUFIN5 V5 Vss Vdd V5_ BUFX2
Vin6 V6_ 0 dc pulse (0 1.1 2n 1n 1n 22n 32n)
XBUFIN6 V6 Vss Vdd V6_ BUFX2
Vin7 V7_ 0 dc pulse (0 1.1 5n 1n 1n 25n 34n)
XBUFIN7 V7 Vss Vdd V7_ BUFX2
Vin8 V8_ 0 dc pulse (0 1.1 4n 1n 1n 21n 32n)
XBUFIN8 V8 Vss Vdd V8_ BUFX2
Vin9 V9_ 0 dc pulse (0 1.1 5n 1n 1n 22n 30n)
XBUFIN9 V9 Vss Vdd V9_ BUFX2
Cload15 V15 0 0.00155103pF
XOR10 V5 V3 Vdd Vss V10 OR2X1
XNOR11 V8 Vdd V8 V11 Vss NOR2X1
XBUF12 V12 Vss Vdd V4 BUFX2
XNOR13 V10 V13 V5 Vss Vdd XNOR2X1
XNAND14 V11 Vss V5 V14 Vdd NAND2X1
XAND15 V0 V8 Vdd Vss V15 AND2X1
.tran 0.1n 100n
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 283.5297800000001 nW
