clc
clear
close all

syms t w
n = -10:10;   % Summeschritten für Fourier-Transformation

x(t) = 10*exp(-2*t)*4*t*heaviside(t);   % Funktion

X(w) = fourier(x(t));   % Fourier Transformation von Funktion
mag = abs(X(n));    % Amplitude von Fourier transformierte Funktion
phase = angle(X(n))*180/pi; % Phasenverschiebung von Fourier transformierte Funktion

subplot(2, 1, 1)
stem(n, mag);   % Graph für Amplitude
title("Amplitude-Graph");
ylabel("Amplitude");

subplot(2, 1, 2)
stem(n, phase); % Graph für Phase
title("Phase-Graph");
ylabel("Phase");

