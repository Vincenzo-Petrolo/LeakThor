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
Vin0 V0 0 dc pulse (0 1.1 9n 1n 1n 30n 36n)
Vin1 V1 0 dc pulse (0 1.1 8n 1n 1n 22n 32n)
Vin2 V2 0 dc pulse (0 1.1 5n 1n 1n 24n 44n)
Vin3 V3 0 dc pulse (0 1.1 4n 1n 1n 20n 39n)
Vin4 V4 0 dc pulse (0 1.1 3n 1n 1n 21n 38n)
Vin5 V5 0 dc pulse (0 1.1 5n 1n 1n 21n 42n)
Vin6 V6 0 dc pulse (0 1.1 1n 1n 1n 29n 53n)
Vin7 V7 0 dc pulse (0 1.1 1n 1n 1n 26n 35n)
Vin8 V8 0 dc pulse (0 1.1 10n 1n 1n 21n 39n)
Vin9 V9 0 dc pulse (0 1.1 2n 1n 1n 23n 28n)
Cload15 V15 0 0.00155103pF
XOR10 V5 V3 Vdd Vss V10 OR2X1
XNOR11 V8 Vdd V8 V11 Vss NOR2X1
XBUF12 V12 Vss Vdd V4 BUFX2
XNOR13 V10 V13 V5 Vss Vdd XNOR2X1
XNAND14 V11 Vss V5 V14 Vdd NAND2X1
XAND15 V0 V8 Vdd Vss V15 AND2X1
.tran 0.1n 100n 0 1p
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 85.99378 nW
