"""
    This util applies filtering techniques to the power consumption
    measurements from spice
"""

import pandas
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt
from scipy.fft import fft, fftfreq, ifft
import scipy

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
    


if __name__ == "__main__":
    time, power, T = load_power()


    # Parameters
    n_samples = len(power)

    # ====== Compute FFT =======
    power_spectrum = fft(power)
    xf = fftfreq(n_samples, T)[:int(n_samples/2)]

    #  ====== Apply median filter ======
    kernel_size = 7001
    filtered = scipy.signal.medfilt(power, kernel_size)
    # ====== Compute FFT for filtered signal =======
    filtered_specturm = fft(filtered)

    print(f"Avg power: {np.mean(power)} | Avg leakage {np.abs(np.mean(filtered))}")

    # ====== Plot =======

    fig, [(ax1, ax2), (ax3, ax4)] = plt.subplots(2, 2)
    ax1.plot(time, power)
    ax2.plot(time, filtered)
    ax3.plot(xf, 2.0/n_samples * np.abs(filtered_specturm[0:int(n_samples/2)]))
    ax4.plot(xf, 2.0/n_samples * np.abs(power_spectrum[0:int(n_samples/2)]))
    ax1.set_xlabel("Time [s]")
    ax2.set_xlabel("Time [s]")
    ax3.set_xlabel("Frequency [Hz]")
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
    plt.tight_layout()
    plt.show()


