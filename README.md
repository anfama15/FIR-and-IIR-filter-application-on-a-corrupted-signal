This engineering project aimed to remove additive white Gaussian noise (AWGN) from a corrupted signal in wireless communication. AWGN can cause distortions and errors in the signal and is typically added during transmission or reception. To remove this noise from the corrupted signal, digital signal processing techniques such as FIR and IIR filters were applied.

To begin, four signals with different frequencies were created and combined into a composite signal. Random noise was then added to simulate AWGN in wireless communication. The next step involved conducting a spectral analysis of the corrupted signal to determine the frequencies that needed to be removed. Based on this analysis, suitable FIR and IIR filters were designed with appropriate cut-off frequencies.

The FIR filter was designed using the Bartlett Hann Window technique with an order of 100 and 300, while the IIR filter was designed with the same specifications but a lower order of 20. The cut-off frequency is the point at which the filter starts to attenuate or remove frequencies from the signal. The order of a filter refers to the number of filter coefficients, which determines the number of calculations required to process the signal.

After designing both filters, the corrupted signal was filtered using each filter, and the results were plotted to evaluate their performance. A comparative analysis of both the FIR and IIR filter designs was performed based on their computational efficiency, filter order, and filtering performance. Finally, a detailed report of the findings was prepared, which included the analysis of the corrupted signal, the design and implementation of the filters, and the evaluation of their performance in removing the AWGN from the signal.

Overall, this engineering problem demonstrated the effectiveness of using FIR and IIR filters to remove unwanted noise from a corrupted signal in wireless communication. By designing suitable filters with appropriate cutoff frequencies, unwanted noise can be removed, and the original signal can be extracted. The comparative analysis of both FIR and IIR filters helps to choose the optimal filter based on their performance and efficiency.
--------------------------------------------------------------------------------------------

1.Created four signals x1, x2, x3 and x4 having frequencies f1, f2, f2 and f4.

2.Generated composite signal X= s.x1 + 2s.x2 - 3s.x3 - 4s.x4. 

3.Added Random Noise in the Composite Signal Xo=Noise.

4.Designed an FIR filter (using FDA tool) with a cut-off of such that to include spectral components of x1 
and order of first 100 and then an order of 300.

5.Designed an IIR filter (using FDA tool) with same specifications but lower order, (preferably 20). Filter 
signal using this filter. Give plots for results.

6.Gave comparative analysis of both the FIR and IIR filter design.
