% Read standard sample tune that ships with MATLAB.
[dataln, Fs] = audioread('guitartune.wav');
%Filter the signal
fc = 800; % Make higher to hear higher frequencies.
% Design a Butterworth filter.
[b, a] = butter(6,fc/(Fs/2));
freqz(b,a)
% Apply the Butterworth filter.
filteredSignal = filter(b, a, dataln);
% Play the sound.
player = audioplayer(filteredSignal, Fs)
play(player)