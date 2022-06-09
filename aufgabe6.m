clc
clear
close all

syms t

n = 0:0.01:10;

x(t) = t*exp(-t)*heaviside(t);  % Signal a
y(t) = (exp(-2*t) - exp(-t))*heaviside(t);  % Signal b
z(t) = dirac(t + 0.5) + exp(-1)*heaviside(t);   % Signal c

X = fourier(x(t));  % Fourier von a
Y = fourier(y(t)); % Fourier von b
Z = fourier(z(t));  % Fourier von c

% Die Fourier-Transformationen sind in "Command Window" geschrieben.
pretty(vpa(X))
pretty(vpa(Y))
pretty(vpa(Z))


