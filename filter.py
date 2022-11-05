"""
    This util applies filtering techniques to the power consumption
    measurements from spice
"""

import pandas
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt


power_consumtpion_meas = "power_consumption.txt"

if __name__ == "__main__":
    df = pandas.read_csv(power_consumtpion_meas, sep='\s+')
    time_steps = []
    power_values = []
    for value in df.values:
        time_steps.append(value[0])
        power_values.append(value[1])
    
    time = np.array(time_steps)
    power = np.array(power_values)
    sampling_freq = 1e9
    b,a = signal.butter(1, sampling_freq/1e9, fs=sampling_freq)
    filtered = signal.lfilter(b, a, -power)
    print(f"Average leakage: {np.average(filtered)}")
    print(f"Average total: {np.average(-power)}")
    fig, (ax1, ax2) = plt.subplots(2, 1)
    ax1.plot(time, -power)
    ax2.plot(time, filtered)
    ax1.set_xlabel("Time [s]")
    ax2.set_xlabel("Time [s]")
    ax1.set_ylabel("Power [W]")
    ax2.set_ylabel("Leakage Power [W]")
    ax1.set_title("Total power")
    ax2.set_title("Leakage power")
    ax1.grid()
    ax2.grid()
    plt.tight_layout()
    plt.show()


