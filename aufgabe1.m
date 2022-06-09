clc
clear
close all

num = [2 5];    % Numerator von Übertragungsfunktion
den = [1 5 6];  % Denominator von Übertragungsfunktion

subplot(1, 2, 1)
impulse(num, den);  % Graph von Impulsantwort

subplot(1, 2, 2)
step(num, den);     % Graph von Sprungantwort

