"""
    Usage: python3 leakage_extractor.py <folder>
    Reads all the .bench files inside a folder recursively
    Performs ngspice analysis
    Extract leakage power in .csv file
"""

import sys
import glob
import os

if __name__ == "__main__":
    walk_dir = sys.argv[1]
    
    if (os.path.isdir(walk_dir) is False):
        print(f"{walk_dir} is not a directory!")
        exit(1)

    print(f"Starting to walk in {walk_dir}")

    found_benchfiles = []
    for filename in glob.iglob(walk_dir+"**/**", recursive=True):
        if (filename.endswith(".bench")):
            print(f"Found {filename}")
            found_benchfiles.append(found_benchfiles)
    


