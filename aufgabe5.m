clc
clear
close all

N = [5 9];  % Anzahl von Summeschritten
t = 0:0.01:2;   % Zeitinterval
xN1 = 0.5*ones(1, length(t));   % Matrix für DC Teil bei N=5
xN2 = 0.5*ones(1, length(t));   % Matrix für DC Teil bei N=9

for n=1:N(1)
    xN1 = xN1 + (2/(n*pi))*sin(2*n*pi*t);   % Partialsumme für N=5
end

for n=1:N(2)
    xN2 = xN2 + (2/(n*pi))*sin(2*n*pi*t);   % Partialsumme für N=9
end

subplot(1, 2, 1)
plot(t, xN1);   % Graph für N=5
title("N=5");
xlabel("Zeit");
ylabel("Amplitude");

subplot(1, 2 ,2)
plot(t,xN2);    % Graph für N=9
title("N=9");
xlabel("Zeit");
ylabel("Amplitude");