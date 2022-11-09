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
Vin1 V1_ 0 dc pulse (0 1.1 8n 1n 1n 28n 31n)
XBUFIN1 V1 Vss Vdd V1_ BUFX2
Vin2 V2_ 0 dc pulse (0 1.1 5n 1n 1n 20n 36n)
XBUFIN2 V2 Vss Vdd V2_ BUFX2
Vin3 V3_ 0 dc pulse (0 1.1 5n 1n 1n 22n 22n)
XBUFIN3 V3 Vss Vdd V3_ BUFX2
Vin6 V6_ 0 dc pulse (0 1.1 6n 1n 1n 28n 30n)
XBUFIN6 V6 Vss Vdd V6_ BUFX2
Vin7 V7_ 0 dc pulse (0 1.1 8n 1n 1n 26n 43n)
XBUFIN7 V7 Vss Vdd V7_ BUFX2
Cload22 V22 0 0.00155103pF
Cload23 V23 0 0.00155103pF
XNAND10 V1 Vss V3 V10 Vdd NAND2X1
XNAND11 V3 Vss V6 V11 Vdd NAND2X1
XNAND16 V2 Vss V11 V16 Vdd NAND2X1
XNAND19 V11 Vss V7 V19 Vdd NAND2X1
XNAND22 V10 Vss V16 V22 Vdd NAND2X1
XNAND23 V16 Vss V19 V23 Vdd NAND2X1
.tran 0.1n 100n
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 118.51669999999999 nW
