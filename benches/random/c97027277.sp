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
Vin0 V0_ 0 dc pulse (0 1.1 8n 1n 1n 24n 24n)
XBUFIN0 V0 Vss Vdd V0_ BUFX2
Vin1 V1_ 0 dc pulse (0 1.1 9n 1n 1n 25n 50n)
XBUFIN1 V1 Vss Vdd V1_ BUFX2
Vin2 V2_ 0 dc pulse (0 1.1 1n 1n 1n 29n 34n)
XBUFIN2 V2 Vss Vdd V2_ BUFX2
Vin3 V3_ 0 dc pulse (0 1.1 3n 1n 1n 29n 30n)
XBUFIN3 V3 Vss Vdd V3_ BUFX2
Vin4 V4_ 0 dc pulse (0 1.1 7n 1n 1n 25n 44n)
XBUFIN4 V4 Vss Vdd V4_ BUFX2
Vin5 V5_ 0 dc pulse (0 1.1 6n 1n 1n 30n 56n)
XBUFIN5 V5 Vss Vdd V5_ BUFX2
Vin6 V6_ 0 dc pulse (0 1.1 7n 1n 1n 22n 32n)
XBUFIN6 V6 Vss Vdd V6_ BUFX2
Vin7 V7_ 0 dc pulse (0 1.1 2n 1n 1n 26n 44n)
XBUFIN7 V7 Vss Vdd V7_ BUFX2
Vin8 V8_ 0 dc pulse (0 1.1 4n 1n 1n 27n 43n)
XBUFIN8 V8 Vss Vdd V8_ BUFX2
Vin9 V9_ 0 dc pulse (0 1.1 10n 1n 1n 29n 55n)
XBUFIN9 V9 Vss Vdd V9_ BUFX2
Vin10 V10_ 0 dc pulse (0 1.1 7n 1n 1n 24n 27n)
XBUFIN10 V10 Vss Vdd V10_ BUFX2
Vin11 V11_ 0 dc pulse (0 1.1 3n 1n 1n 28n 31n)
XBUFIN11 V11 Vss Vdd V11_ BUFX2
Vin12 V12_ 0 dc pulse (0 1.1 4n 1n 1n 22n 43n)
XBUFIN12 V12 Vss Vdd V12_ BUFX2
Vin13 V13_ 0 dc pulse (0 1.1 8n 1n 1n 23n 24n)
XBUFIN13 V13 Vss Vdd V13_ BUFX2
Vin14 V14_ 0 dc pulse (0 1.1 9n 1n 1n 24n 37n)
XBUFIN14 V14 Vss Vdd V14_ BUFX2
Vin15 V15_ 0 dc pulse (0 1.1 1n 1n 1n 25n 39n)
XBUFIN15 V15 Vss Vdd V15_ BUFX2
Vin16 V16_ 0 dc pulse (0 1.1 2n 1n 1n 23n 42n)
XBUFIN16 V16 Vss Vdd V16_ BUFX2
Vin17 V17_ 0 dc pulse (0 1.1 2n 1n 1n 26n 44n)
XBUFIN17 V17 Vss Vdd V17_ BUFX2
Vin18 V18_ 0 dc pulse (0 1.1 6n 1n 1n 27n 44n)
XBUFIN18 V18 Vss Vdd V18_ BUFX2
Vin19 V19_ 0 dc pulse (0 1.1 5n 1n 1n 25n 26n)
XBUFIN19 V19 Vss Vdd V19_ BUFX2
Cload28 V28 0 0.00155103pF
XOR20 V19 V20 V18 Vdd Vss XOR2X1
XNOR21 V12 Vdd V1 V21 Vss NOR2X1
XAND22 V14 V0 Vdd Vss V22 AND2X1
XNOR23 V12 V23 V19 Vss Vdd XNOR2X1
XBUF24 V24 Vss Vdd V2 BUFX2
XNOR25 V14 V25 V3 Vss Vdd XNOR2X1
XINV26 V0 Vss Vdd V26 INVX1
XBUF27 V27 Vss Vdd V10 BUFX2
XNOR28 V2 V28 V21 Vss Vdd XNOR2X1
.tran 0.1n 100n
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 590.6344600000001 nW
