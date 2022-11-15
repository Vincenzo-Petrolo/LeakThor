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
Vina Va 0 dc pulse (0 1.1 10n 1n 1n 29n 54n)
Vinb Vb 0 dc pulse (0 1.1 4n 1n 1n 29n 35n)
Vinc Vc 0 dc pulse (0 1.1 10n 1n 1n 24n 37n)
Vind Vd 0 dc pulse (0 1.1 10n 1n 1n 21n 26n)
Cloady Vy 0 0.00155103pF
Cloadz Vz 0 0.00155103pF
XANDg Va Vb Vdd Vss Vg AND2X1
XORk Vg Vc Vdd Vss Vk OR2X1
XINVi Vg Vss Vdd Vi INVX1
XINVe Vb Vss Vdd Ve INVX1
XNANDy Vi Vss Vk Vy Vdd NAND2X1
XNORz Vk Vdd Ve Vz Vss NOR2X1
.tran 0.1n 100n 0 1p
.probe P(Vpower)
.control
run
plot -Vpower:power
meas tran power_avg avg Vpower:power
wrdata power_consumption.txt Vpower:power
.endc
* Leakage power estimation: 39.74383999999999 nW
