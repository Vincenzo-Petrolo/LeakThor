* Inverter test

* Include the spice models for transistors and INV logic gate
.include ./FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include
.include ./FreePDK45/osu_soc/lib/source/netlists/INVX1.pex.netlist

.option TEMP=25c

* Create Vdd
Vpower Vdd 0 1.1
* Create Vss
Vgnd Vss 0 0
* Vgate
Vgate Vin 0 dc 0 pulse (0 1.1 1u 1u 1u 1u 5u)
* Load capacitance
C0 Vout 0 1nF
* Declare the inverter
X0 Vin Vss Vdd Vout INVX1
* Perform transient sim
.tran 10n 10u

.probe P(Vpower)

.control
    run
    * Plot
    plot -Vpower:power
    meas tran power_avg avg Vpower:power
    wrdata power_avg.txt power_avg:result
.endc