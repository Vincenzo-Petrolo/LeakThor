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
Vin0 V0 0 dc pulse (0 1.1 2n 1n 1n 10n 16n)
Vin1 V1 0 dc pulse (0 1.1 2n 1n 1n 10n 20n)
Vin2 V2 0 dc pulse (0 1.1 7n 1n 1n 5n 5n)
Vin3 V3 0 dc pulse (0 1.1 2n 1n 1n 7n 12n)
Vin4 V4 0 dc pulse (0 1.1 9n 1n 1n 8n 8n)
Vin5 V5 0 dc pulse (0 1.1 9n 1n 1n 4n 4n)
Vin6 V6 0 dc pulse (0 1.1 6n 1n 1n 6n 12n)
Vin7 V7 0 dc pulse (0 1.1 6n 1n 1n 7n 14n)
Vin8 V8 0 dc pulse (0 1.1 7n 1n 1n 8n 10n)
Vin9 V9 0 dc pulse (0 1.1 3n 1n 1n 10n 11n)
Cload15 V15 0 1nF
XOR10 V5 V3 Vdd Vss V10 OR2X1
XNOR11 V8 Vdd V8 V11 Vss NOR2X1
XBUF12 V12 Vss Vdd V4 BUFX2
XNOR13 V10 V13 V5 Vss Vdd XNOR2X1
XNAND14 V11 Vss V5 V14 Vdd NAND2X1
XAND15 V0 V8 Vdd Vss V15 AND2X1
.tran 1n 1u
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
