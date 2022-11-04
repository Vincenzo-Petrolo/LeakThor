import matplotlib.pyplot as plt
import numpy as np
import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()


from PySpice.Spice.Netlist import Circuit
from PySpice.Unit import *

def get_path_to_gate(gate_name):
    return f"./FreePDK45/osu_soc/lib/source/netlists/{gate_name}.pex.netlist"

path_2_transistors = "./FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"
circuit = Circuit('Inverter test')

# Include needed libraries
circuit.include(path_2_transistors)
circuit.include(get_path_to_gate("INVX1"))

circuit.V('Vpower', 'Vdd', circuit.gnd, 1.1@u_V )
circuit.V('Vgate', 'Vin', circuit.gnd, 'dc 0 pulse (0 1.1 1u 1u 1u 1u 5u)')


circuit.C('Cload', 'Vout', circuit.gnd, 1@u_nF)

# Create the inverter
circuit.X('Inverter', 'INVX1', 'Vin', circuit.gnd, 'Vdd', 'Vout')



simulator = circuit.simulator(temperature=25, nominal_temperature=25)

analysis = simulator.transient(step_time=10@u_ns,end_time=10@u_us)

fig = plt.figure()
plt.plot(np.array(analysis.time), np.array(analysis["Vout"]))
plt.plot(np.array(analysis.time), np.array(analysis["Vin"]))
plt.show()