# S-Parameter Analysis and Visualization of a 2.45 GHz Bandpass Filter (MATLAB)

A MATLAB project that computes, plots, and explains the scattering parameters (S-parameters) of a two-port RF bandpass filter centered at 2.45 GHz. It produces the three standard views an RF engineer uses to read a device — magnitude response, VSWR, and a Smith chart — and prints the key performance metrics.

The S-parameter data is generated inside the script from a filter model, so the project runs immediately with no external data files to download or configure.

## What are S-parameters?

Scattering parameters describe how a high-frequency network responds to signals at its ports in terms of reflected and transmitted power waves. At RF, voltage and current are difficult to probe directly, so S-parameters are the standard language for characterizing filters, amplifiers, antennas, and interconnects.

For a two-port device:

| Parameter | Name | Meaning |
|-----------|------|---------|
| **S11** | Input reflection coefficient | Fraction of the signal reflected back at port 1. Lower is better. |
| **S21** | Forward transmission | Fraction transmitted from port 1 to port 2 (gain or loss). |
| **S12** | Reverse transmission | Leakage from port 2 back to port 1 (isolation). |
| **S22** | Output reflection coefficient | Reflection looking into port 2. |

Two derived figures of merit used throughout this project:

- **Return Loss** = −S11 (dB). A return loss of 20 dB means only 1% of the incident power is reflected. Higher is better.
- **Insertion Loss** = −S21 (dB) for a passive device. It quantifies how much of the signal is lost passing through.
- **VSWR** (Voltage Standing Wave Ratio) restates S11 as a standing-wave ratio on the feed line. VSWR = 1 is a perfect match; VSWR < 2 (return loss > 10 dB) is a common acceptability threshold.

## The device under analysis

A second-order bandpass filter modeled with:

- **Center frequency:** 2.45 GHz (the 2.4 GHz ISM band)
- **Bandwidth:** ~200 MHz target
- **Reference impedance:** 50 Ω
- **In-band insertion loss:** ~0.7 dB

## Results

Running the script produces the following metrics:

```
Reference impedance        : 50 ohm
Centre frequency (S21 peak): 2.450 GHz
Insertion loss at centre   : 0.70 dB
-3 dB passband             : 2.315 - 2.595 GHz (BW = 280 MHz)
Return loss at centre      : 30.5 dB
VSWR at centre             : 1.06
```

### Figure 1 — S11 and S21 magnitude

The transmission curve (S21) peaks near 0 dB at the center frequency and rolls off on either side, defining the passband. The reflection curve (S11) drops sharply at the center frequency: when the filter is well matched, almost no power is reflected. Note the complementary relationship — where transmission is high, reflection is low. The −3 dB points on S21 set the passband edges, and the spacing between them is the bandwidth.

### Figure 2 — VSWR

VSWR mirrors S11. It sits near 1 across the passband (matched) and rises steeply in the stopband, where the filter rejects energy by reflecting it. This is the quantity most directly compared against a vector network analyzer measurement.

### Figure 3 — Smith chart of S11

Each point on the trace is the input impedance at one frequency, normalized to 50 Ω. The center of the chart represents a perfect 50 Ω match; the right edge is an open circuit and the left edge a short. As frequency sweeps, the trace loops, passing closest to the center near resonance — the visual signature of a well-matched device.

## Running it

Requirements: **MATLAB** (base installation is sufficient).

```matlab
% Open the script in MATLAB and press Run (F5), or:
run('sparams_no_file.m')
```

No data files, no toolboxes, and no path configuration are required. The Smith chart is drawn directly from the reflection-coefficient grid, so it works without the RF Toolbox.

### Optional: RF Toolbox version

If the RF Toolbox is available, the final (commented) section of the script wraps the same data into an `sparameters` object and uses the built-in `rfplot` and `smithplot` functions. The object is constructed from data in memory, so there is still no file to import.

## Files

| File | Description |
|------|-------------|
| `sparams_no_file.m` | Main script: generates the S-parameter data, plots all three figures, and prints the metrics. |
| `README.md` | This document. |

## Notes

The S-parameter data here is generated from an analytical filter model rather than measured on hardware. It is intended to demonstrate the computation, plotting, and interpretation of S-parameters. A physically built filter would show additional effects — component parasitics, dielectric and conductor losses, and fabrication tolerances — that shift and degrade the response, especially as frequency increases.

## License

MIT
