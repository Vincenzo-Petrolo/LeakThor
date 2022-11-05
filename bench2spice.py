"""
    This program parses a .bench file into a SPICE netlist
"""

import parser # used to parse the bench file
import spice_parser # used 2 convert
import sys

if __name__ == "__main__":
    p = parser.Parser()
    c = spice_parser.SpiceParser()
    if (len(sys.argv) >= 2):
        circuit = p.readFile(str(sys.argv[1]))
        c.convert(circuit)
    else:
        print("Error! Expected filename\nExample: python3 bench2spice.py c17.bench")