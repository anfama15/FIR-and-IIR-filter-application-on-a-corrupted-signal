clc;
close all;
%%
fs = 90000;% Sampling Freq Nyquist 2x of Composite signal
Ts = 1/fs; % Time Period
t = 0: Ts : 0.001;
% Signal
f1=21000; % Frequency [Hz]
f2=24000;
f3=27000;
f4=30000;
%%
a1=1; % Amplitude
a2=1;
a3=1;
a4=1;
x1 =a1*sin(2*pi.*t.*f1); 
x2 =a2*sin(2*pi.*t.*f2);
x3 =a3*sin(2*pi.*t.*f3);
x4 =a4*sin(2*pi.*t.*f4);
anon=0+2+8; 
X0=anon*x1+2*anon*x2-3*anon*x3-4*anon*x4;% composite signal%
%% Noise
aNoise = 75; % Amplitude
fNoise = 15000; % Frequency [Hz]
noise = aNoise*cos(2*pi.*t.*fNoise);
%% Signal + Noise
signalNoise = X0 + noise; %Corrupted Signal
%% Plots
%Visualize In time domain
figure(1)
subplot(3,1,1);
plot(t,X0);
xlabel('Time[s]');
ylabel('Amplitude');
title('Original signal');
subplot(3,1,2);
plot(t, noise);
xlabel('Time [s]');
ylabel('Amplitude');
title('Noise');
subplot(3,1,3);
plot(t, signalNoise);
xlabel('Time [s]');
ylabel('Amplitude');
title('Composite Signal =Original signal + Noise');
%% Visualise the above noisy signal in ferquency domain
%%
X0FFT=fft(X0,fs);
figure(2)
subplot(3,1,1);
plot(abs(X0FFT));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Composite Signal in frequency domain');
%%
P=fft(signalNoise,fs);
subplot(3,1,2);
plot(abs(P));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Noisy Signal in frequency domain');
%%
FIR_1=filter(FIR_100,signalNoise); %FIR FILTER OF ORDER 100 For filtering frequencies of 20KHz to 70KHz
P=fft(FIR_1,fs);
subplot(3,1,3);
plot(abs(P));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Noise Free Signal in Frequency domain');
 
%% To Implement FIR filter of order 300 to pass frequency of 20KHz to 70KHz
%%
figure(3)
subplot(3,1,1);
plot(abs(X0FFT));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Composite Signal in frequency domain');
%%
P=fft(signalNoise,fs);
subplot(3,1,2);
plot(abs(P));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('FIR FILTERs  Noisy Signal in frequency domain');
%%
FIR_3=filter(FIR_300,signalNoise);%FIR FILTER OF ORDER 300 For filtering frequencies of 20KHz to 70KHz
FIR_FFT_300=fft(FIR_3,fs); 
% P=fft(y,fs);
subplot(3,1,3);
plot(abs(FIR_FFT_300));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('FIR FILTERs Noise Free Signal in Frequency domain');
%%
%% To Implement IIR filter of minimum order to remove noise of Frequency 20KHz-70KHz in frequency domain
%%
% X0FFT=fft(X0,fs);
figure(4)
subplot(3,1,1);
plot(abs(X0FFT));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Composite Signal in frequency domain');
%%
P=fft(signalNoise,fs);
subplot(3,1,2);
plot(abs(P));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('Noisy Signal in frequency domain');
%%IIR_Butterworth
IIR=filter(IIR_Butterworth,signalNoise);
P=fft(IIR,fs);
subplot(3,1,3);
plot(abs(P));
xlabel('Frequency in Hz');
ylabel('Magnitude');
title('IIR Filters Noise Free Signal in Frequency domain');
