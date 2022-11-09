"""
    This util applies filtering techniques to the power consumption
    measurements from spice
"""

import pandas
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt
from scipy.fft import fft, fftfreq



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

    power_spectrum = fft(power)

    sampling_freq = 1e9

    # Parameters should be order around 7 and cutoff no lower than 1e-4
    # The loss in dB should be 0 at frequency 0
    # Find the correct parameters to achieve that
    b,a = signal.butter(5, 0.002, btype='low')

    filtered = signal.lfilter(b, a, -power)

    print(f"Average leakage: {np.average(filtered)}")
    fitered_spectrum = fft(filtered)
    print(f"Average total: {np.average(-power)}")
    
    n_samples = len(power)
    dt = 1e-10
    xf = fftfreq(n_samples, dt)[:int(n_samples/2)]

    # Compute the digital filter response
    w, h = signal.freqz(b,a)
    fig = plt.figure()
    plt.plot(w, 20 * np.log10(abs(h)), 'b')
    plt.show()












    fig, [(ax1, ax2), (ax3, ax4)] = plt.subplots(2, 2)
    ax1.plot(time, -power)
    ax2.plot(time, filtered)
    ax3.plot(xf, 2.0/n_samples * np.abs(fitered_spectrum[0:int(n_samples/2)]))
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


