clc
clear
close all

num = [1 1 1];  % Numerator von Übertragungsfunktion
denum = [2 10 16 8];    % Denominator von Übertragungsfunktion
w = 0:0.01:6*pi;    % Frequenzinterval
H = freqs(num, denum, w);   % Frequenzantworten
amplitude = abs(H); % Amplitude
phase = angle(H);   % Phase in Radian
phase = phase * (180/pi);   % Phase in Grad

subplot(2, 1, 1)
plot(w/(2*pi), amplitude);  % Graph von Amplitude
xlabel('Frequenz [Hz]');
ylabel('Amplitude');
title("Amplitude Graph");

subplot(2, 1, 2)
plot(w/(2*pi), phase);  % Graph von Phase
xlabel('Frequenz [Hz]');
ylabel('Phase [\circ]');
title("Phase Graph");

