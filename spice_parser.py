"""
    This program parses a Circuit object into a SPICE netlist
"""
import circuit as cr
import random
import lut

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
        self.total_leak_power = 0
        pass

    # Converts a circuit object into a spice netlist
    def convert(self,circuit):
        print("Starting conversion")
        self.total_leak_power = 0
        # Create new filename by removing .bench and appending .sp extension
        filename = circuit.name.removesuffix('.bench') + ".sp"
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
            f.write('.option TEMP=27c\n')
            f.close()

    def _createPowerSupply(self, filename):
        with open(filename, 'a') as f:
            f.write('Vpower Vdd 0 1.1\n')
            f.write('Vgnd Vss 0 0\n')
            f.close()
    
    def _createInputsPowerSupply(self, filename, circuit):
        # The input switching uses Montecarlo to catch more randomness
        with open(filename, 'a') as f:
            for input in circuit.inputs.keys():
                Tw = random.randint(20,30) # width of pulse picking randomly between 1 and 10
                Td = random.randint(1,10) # add delay picking randomly between 1 and 10
                To = 2*Tw # period of pulse picking randomly between Twidth and 2Twidth

                # PULSE PULSE(Vo V1 Td Tr Tf Tw To)
                f.write(f"Vin{input} V{input} 0 dc pulse (0 1.1 {Td}n 1n 1n {Tw}n {To}n)\n")
                #f.write(f"Vin{input} V{input} 0 {random.choice([0])}\n")
                # Create buffers to simulate a non ideal power supply
            f.close()

    def _createOutputLoadCapacitance(self, filename, circuit):
        with open(filename, 'a') as f:
            for output in circuit.outputs.keys():
                # capacitance : 0.00155103pF; of INVX1
                f.write(f"Cload{output} V{output} 0 0.00155103pF\n")
            f.close()

    def _writeSimulationInfos(self, filename):
        with open(filename, 'a') as f:
            f.write(".tran 0.1n 100n 0 1p\n")
            f.write(".probe P(Vpower)\n")
            f.write(".control\n")
            f.write("run\n")
            #f.write("plot -Vpower:power\n")
            f.write("meas tran power_avg avg Vpower:power\n")
            f.write("wrdata power_consumption.txt Vpower:power\n")
            f.write("exit\n")
            f.write(".endc\n")
            f.write(f"* Leakage power estimation: {self.total_leak_power} nW\n")
            f.close()

    def _writeCircuit(self, filename, circuit):
        with open(filename, 'a') as f:
            # go through each node
            for node in circuit.nodes.values():
                if (node.function == cr.__AND__):
                    #.subckt AND2X1  A B VDD GND Y
                    f.write(f"XAND{node.name} V{node.fan_in[0]} V{node.fan_in[1]} Vdd Vss V{node.name} AND2X1\n")
                    self.total_leak_power += lut.AND2X1_leak
                elif (node.function == cr.__NAND__):
                    #.subckt NAND2X1  A GND B Y VDD
                    f.write(f"XNAND{node.name} V{node.fan_in[0]} Vss V{node.fan_in[1]} V{node.name} Vdd NAND2X1\n")
                    self.total_leak_power += lut.NAND2X1_leak
                elif (node.function == cr.__OR__):
                    #.subckt OR2X1  A B VDD GND Y
                    f.write(f"XOR{node.name} V{node.fan_in[0]} V{node.fan_in[1]} Vdd Vss V{node.name} OR2X1\n")
                    self.total_leak_power += lut.OR2X1_leak
                elif (node.function == cr.__NOR__):
                    #.subckt NOR2X1  A VDD B Y GND
                    f.write(f"XNOR{node.name} V{node.fan_in[0]} Vdd V{node.fan_in[1]} V{node.name} Vss NOR2X1\n")
                    self.total_leak_power += lut.NOR2X1_leak
                elif (node.function == cr.__NOT__):
                    #.subckt INVX1  A GND VDD Y
                    f.write(f"XINV{node.name} V{node.fan_in[0]} Vss Vdd V{node.name} INVX1\n")
                    self.total_leak_power += lut.INVX1_leak
                elif (node.function == cr.__BUF__):
                    #.subckt BUFX2  Y GND VDD A
                    f.write(f"XBUF{node.name} V{node.name} Vss Vdd V{node.fan_in[0]} BUFX2\n")
                    self.total_leak_power += lut.BUFX2_leak
                elif (node.function == cr.__XOR__):
                    #.subckt XOR2X1  B Y A VDD GND
                    f.write(f"XOR{node.name} V{node.fan_in[1]} V{node.name} V{node.fan_in[0]} Vdd Vss XOR2X1\n")
                    self.total_leak_power += lut.XOR2X1_leak
                elif (node.function == cr.__XNOR__):
                    #.subckt XNOR2X1  B Y A GND VDD
                    f.write(f"XNOR{node.name} V{node.fan_in[1]} V{node.name} V{node.fan_in[0]} Vss Vdd XNOR2X1\n")
                    self.total_leak_power += lut.XNOR2X1_leak


            f.close()