"""
    This util applies filtering techniques to the power consumption
    measurements from spice
"""

import pandas
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt
import scipy
import os

def load_power():
    power_consumtpion_meas = "power_consumption.txt"
    df = pandas.read_csv(power_consumtpion_meas, sep='\s+')
    time_steps = []
    power_values = []
    T = 1e-12 # Spacing between time values

    for value in df.values:
        time_steps.append(value[0])
        power_values.append(value[1])
    
    time = np.array(time_steps)
    power = -np.array(power_values)

    return time, power, T

def load_power_dummy():
    time = np.linspace(0, 10*np.pi, 10**3)
    power = np.sin(2*np.pi*time) + 2
    T = 10*np.pi/(10**3)
    return time, power, T
    


def filter(circ_name, kernel_fraction):
    time, power, T = load_power()


    # Parameters
    n_samples = len(power)

    # ====== Compute FFT =======
    f1 = 0
    f2 = int(2e9)
    transform = signal.ZoomFFT(n_samples, [f1, f2], n_samples, fs=1/T, endpoint=True)
    power_spectrum = transform(power)
    xf1 = np.linspace(f1, f2, n_samples)

    #  ====== Apply median filter ======
    # I use the median filter to remove the peaks by the signal
    # It is a technique used to remove noise
    kernel_size = int(len(power)/int(kernel_fraction))
    if (kernel_size % 2 == 0): kernel_size += 1
    filtered = scipy.signal.medfilt(power, kernel_size)
    # ====== Compute FFT for filtered signal =======
    filtered_specturm = transform(filtered)


    # ====== Plot =======

    fig, [(ax1, ax2), (ax3, ax4)] = plt.subplots(2, 2)
    ax1.plot(time, power)
    ax2.plot(time, filtered)
    ax3.plot(xf1, 2.0/n_samples * np.abs(filtered_specturm))
    ax4.plot(xf1, 2.0/n_samples * np.abs(power_spectrum))
    ax1.set_xlabel("Time [s]")
    ax2.set_xlabel("Time [s]")
    ax3.set_xlabel("Frequency [Hz]")
    ax4.set_xlabel("Frequency [Hz]")
    ax1.set_ylabel("Power [W]")
    ax2.set_ylabel("Leakage Power [W]")
    ax3.set_ylabel("Power Spectrum")
    ax1.set_title("Total power")
    ax2.set_title("Leakage power")
    ax3.set_title("Filtered Power spectrum")
    ax4.set_title("Power spectrum")
    ax1.grid()
    ax2.grid()
    ax3.grid()
    ax4.grid()
    os.system("mkdir -p images")
    plt.tight_layout()
    #plt.show()
    plt.savefig(f"images/{circ_name}.jpg", format="jpg")

    return np.abs(np.mean(filtered))

