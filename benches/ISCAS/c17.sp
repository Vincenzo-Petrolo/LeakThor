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
Vin1 V1 0 dc pulse (0 1.1 3n 1n 1n 20n 25n)
Vin2 V2 0 dc pulse (0 1.1 10n 1n 1n 22n 25n)
Vin3 V3 0 dc pulse (0 1.1 8n 1n 1n 26n 37n)
Vin6 V6 0 dc pulse (0 1.1 10n 1n 1n 24n 48n)
Vin7 V7 0 dc pulse (0 1.1 10n 1n 1n 30n 50n)
Cload22 V22 0 0.00155103pF
Cload23 V23 0 0.00155103pF
XNAND10 V1 Vss V3 V10 Vdd NAND2X1
XNAND11 V3 Vss V6 V11 Vdd NAND2X1
XNAND16 V2 Vss V11 V16 Vdd NAND2X1
XNAND19 V11 Vss V7 V19 Vdd NAND2X1
XNAND22 V10 Vss V16 V22 Vdd NAND2X1
XNAND23 V16 Vss V19 V23 Vdd NAND2X1
.tran 0.1n 100n 0 1p
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 19.748700000000003 nW
