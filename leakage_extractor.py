"""
    Usage: python3 leakage_extractor.py <folder>
    Reads all the .bench files inside a folder recursively
    Performs ngspice analysis
    Extract leakage power in .csv file
"""

import sys
import glob
import os
import subprocess
import filter

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
            found_benchfiles.append(filename)
    
    # Now create the result file
    result_file = open("leakage_extraction_report.csv", 'w')
    result_file.write(f"Circuit name, Average leakage power [W]\n")
    progress = 0

    # Generate the spice netlists
    for filename in found_benchfiles:
        os.system("clear")
        print(f"Progress: {int(progress/len(found_benchfiles)*100)} %")
        circuit_name = filename.removesuffix(".bench")
        circuit_name = circuit_name.split('/')[-1]
        print(f"Working on {circuit_name}")
        # Call the script
        subprocess.call(f"python3 bench2spice.py {filename}", shell=True, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
        print("Conversion done!")
        # Call the ngspice script
        spice_filename = filename.replace(".bench", ".sp")
        subprocess.call(f"ngspice -a {spice_filename}", shell=True, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
        print("Spice simulation done!")
        # Now call the filter which will read the power consumption report obtained from ngspice
        leakage = filter.filter(circuit_name, kernel_fraction=14)
        print("Leakage power extracted!")
        result_file.write(f"{circuit_name}, {leakage}\n")

        progress += 1
    
    os.system("clear")
    print("Everything done, read the report on leakage_extraction_report.csv")
    print("Everything done, you can also find useful plots under images section")
    

