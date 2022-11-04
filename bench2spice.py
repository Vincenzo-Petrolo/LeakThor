"""
    This program parses a .bench file into a SPICE netlist
"""

import parser # used to parse the bench file
import spice_parser # used 2 convert

if __name__ == "__main__":
    p = parser.Parser()
    c = spice_parser.SpiceParser()
    circuit = p.readFile("and.bench")
    c.convert(circuit)