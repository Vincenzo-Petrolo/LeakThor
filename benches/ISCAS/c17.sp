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
Vin1 V1 0 dc pulse (0 1.1 7n 1n 1n 5n 10n)
Vin2 V2 0 dc pulse (0 1.1 1n 1n 1n 3n 5n)
Vin3 V3 0 dc pulse (0 1.1 9n 1n 1n 6n 11n)
Vin6 V6 0 dc pulse (0 1.1 3n 1n 1n 10n 13n)
Vin7 V7 0 dc pulse (0 1.1 6n 1n 1n 6n 9n)
Cload22 V22 0 1nF
Cload23 V23 0 1nF
XNAND10 V1 Vss V3 V10 Vdd NAND2X1
XNAND11 V3 Vss V6 V11 Vdd NAND2X1
XNAND16 V2 Vss V11 V16 Vdd NAND2X1
XNAND19 V11 Vss V7 V19 Vdd NAND2X1
XNAND22 V10 Vss V16 V22 Vdd NAND2X1
XNAND23 V16 Vss V19 V23 Vdd NAND2X1
.tran 1n 1u
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
