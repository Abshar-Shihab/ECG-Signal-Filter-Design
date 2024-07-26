# ECG Signal Filter Design

## Introduction
This project involves designing a discrete-time digital IIR filter for an electrocardiogram (ECG) signal. An ECG device monitors the cardiac status of a patient by recording the heart's electrical potential over time. Such devices play a critical role in saving the lives of patients who survive heart attacks or suffer from serious heart diseases. Early detection of conditions that could lead to cardiac arrest allows doctors to provide timely treatment, thereby preventing death or disability.

## Problem Description
Three types of noise commonly contaminate the ECG signal:
- **Baseline wander noise (BW)**: Induced by changes in electrodes due to perspiration, movement, and respiration, typically below 0.5 Hz.
- **Electromyographic interference (EMG)**: Overlaps with the ECG signal frequencies, making it challenging to track and cancel.
- **Power line interference**: Either 50 Hz or 60 Hz and its harmonics.

The goal of this project is to design a filter to attenuate baseline wander noise and power line interference. Sophisticated processing would be needed to track and cancel EMG noise.

### Bandpass Filter Specifications
- **Stopband Attenuation**: 
  - 0 Hz to 1 Hz: At least 40 dB
  - Above 45 Hz: At least 40 dB
- **Passband Ripple**: 
  - 6 Hz to 40 Hz: No greater than 1 dB

These specifications are compatible with the monitor mode in modern ECG monitors. The sampling rate used is 200 Hz, though rates can vary from 100 Hz to 1000 Hz.

## Filter Design Tasks
### (a) Design IIR Filters
Design IIR filters using the following methods:
- Butterworth
- Chebyshev type I
- Chebyshev type II
- Elliptic (Equiripple)

For each design method, find the filter of smallest order to meet the specifications. Provide plots of the magnitude and phase responses for each IIR filter designed.

### (b) Filter Order and Pole-Zero Diagram
- List the filter orders required to meet the specifications.
- Identify which IIR filter family provides the lowest filter order.
- Plot the pole-zero diagram for the IIR filter with the shortest order designed in (a). 

## Recommendations
- The rule of thumb for filter design is that the distance from the maximum passband frequency to the minimum stopband frequency should be at least 10% of the passband bandwidth.
- In Matlab, use the filter design and analysis tool, `fdatool`.

## Submission
- Plots of the magnitude and phase responses for each IIR filter designed.
- List of filter orders required for each design method.
- Pole-zero diagram for the IIR filter with the shortest order.
- Feedforward and feedback coefficients for the elliptic filter.

## Conclusion
This project focuses on designing efficient IIR filters to clean ECG signals from baseline wander noise and power line interference, thereby improving the accuracy of ECG monitoring devices.
