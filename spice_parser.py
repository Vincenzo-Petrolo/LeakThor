"""
    This program parses a Circuit object into a SPICE netlist
"""
import circuit as cr

# Library includes
path2transistors = "./FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"

def getCellPath(cell_name):
    return f"./FreePDK45/osu_soc/lib/source/netlists/{cell_name}.pex.netlist"


# Problem there are not 4 input gates, so I am using only two input gates at most
includes = [path2transistors,
            getCellPath("AND2X1"),
            getCellPath("NAND2X1"),
            getCellPath("OR2X1"),
            getCellPath("NOR2X1"),
            getCellPath("BUFX2"),
            getCellPath("INVX1"),
            getCellPath("XOR2X1"),
            getCellPath("XNOR2X1")
            ]

class SpiceParser(object):
    def __init__(self) -> None:
        pass

    # Converts a circuit object into a spice netlist
    def convert(self,circuit):
        print("Starting conversion")
        # Create new filename by removing .bench and appending .sp extension
        filename = circuit.name.strip('.bench') + ".sp"
        # Write the includes for adding the library of gates
        self._writeIncludes(filename)
        # Write the options such as temperature
        self._writeOptions(filename)
        # Create the power supply
        self._createPowerSupply(filename)
        # Create the voltage supply for the inputs
        self._createInputsPowerSupply(filename, circuit)
        # Create the load capacitance for the outputs
        self._createOutputLoadCapacitance(filename, circuit)
        # Create the circuit
        self._writeCircuit(filename, circuit)
        # Write the rest of the infos
        self._writeSimulationInfos(filename)
        print("Conversion done")

    def _writeIncludes(self, filename):
        with open(filename, 'w') as f:
            for include_file in includes:
                f.write(f".include {include_file}\n") 
            f.close()

    def _writeOptions(self, filename):
        with open(filename, 'a') as f:
            f.write('.option TEMP=25c\n')
            f.close()

    def _createPowerSupply(self, filename):
        with open(filename, 'a') as f:
            f.write('Vpower Vdd 0 1.1\n')
            f.write('Vgnd Vss 0 0\n')
            f.close()
    
    def _createInputsPowerSupply(self, filename, circuit):
        with open(filename, 'a') as f:
            for input in circuit.inputs.keys():
                f.write(f"Vin{input} V{input} 0 dc pulse (0 1.1 1u 1u 1u 1u 5u)\n")
            f.close()

    def _createOutputLoadCapacitance(self, filename, circuit):
        with open(filename, 'a') as f:
            for output in circuit.outputs.keys():
                f.write(f"Cload{output} V{output} 0 1nF\n")
            f.close()

    def _writeSimulationInfos(self, filename):
        with open(filename, 'a') as f:
            f.write(".tran 10n 10u\n")
            f.write(".probe P(Vpower)\n")
            f.write(".control\n")
            f.write("run\n")
            f.write("plot -Vpower:power\n")
            f.write("meas tran power_avg avg Vpower:power\n")
            f.write("wrdata power_consumption.txt Vpower:power\n")
            f.write(".endc\n")
            f.close()

    def _writeCircuit(self, filename, circuit):
        with open(filename, 'a') as f:
            # go through each node
            for node in circuit.nodes.values():
                if (node.function == cr.__AND__):
                    f.write(f"XAND{node.name} V{node.fan_in[0]} V{node.fan_in[1]} Vdd Vss V{node.name} AND2X1\n")


            f.close()