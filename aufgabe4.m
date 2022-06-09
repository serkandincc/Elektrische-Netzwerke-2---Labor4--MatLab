clc
clear
close all

syms t n

x(t) = 10 + 6*cos(2*pi*t) + 4*cos(4*pi*t);  % Funktion für a
a = 0:0.01:2;   % Zeitinterval für a

c = (((-1)^n) / 10) * sin((n*pi*t) / 2);    % Funktion für b
y(t) = symsum(c, n, -5, 5); % Summe von Funktion b von -5 zu 5 im Bezug auf n
b = -0.5:0.01:0.5;  % Zeitinterval für b

subplot(1, 2, 1)
plot(a, x(a));  % Graph von a
title("a");
xlabel("Zeit");
ylabel("Amplitude");

subplot(1, 2, 2)
plot(b, y(b));  % Graph von b
title("b");
xlabel("Zeit");
ylabel("Amplitude");