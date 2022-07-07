# DSP_CEP
FIR and IIR filter application on a corrupted signal

In Wireless Communication, whenever the signal passes through the medium, it undergoes additive white 
Gaussian noise (AWGN) which attenuates the amplitude of the original signal. AWGN equally affects all the 
frequencies and is unavoidable. Objective of this engineering problem is to effectively remove the noise by 
performing spectral analysis of the signal. Based on the frequency analysis, you would be required to design 
suitable IIR and FIR filters with suitable cutoff frequencies to extract the original signal by removing unwanted 
noise. At the end, perform the comparative analysis of proposed IIR and FIR filters.

1.Create four signals x1, x2, x3 and x4 having frequencies f1, f2, f2 and f4.

2.Generate composite signal X= s.x1 + 2s.x2 - 3s.x3 - 4s.x4. 

3.Add Random Noise in the Composite Signal Xo=Noise.

4.Design an FIR filter (using FDA tool) with a cut-off of such that to include spectral components of x1 
and order of first 100 and then an order of 300.

5.Design an IIR filter (using FDA tool) with same specifications but lower order, preferably 20. Filter 
signal using this filter. Give plots for results.

6.Give comparative analysis of both the FIR and IIR filter design.
