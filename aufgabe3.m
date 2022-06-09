clc
clear
close all

H1 = tf([1 10 0], [1 70 20*50]);    % Übertragungsfunktion für (a)
H2 = tf([1 1], [1 24.5 61 32]);     % Übertragungsfunktion für (b)

subplot(1, 2, 1)
bode(H1);   % Zeichnung vom Bode-Diagramm für (a)
title("Bode Diagram (a)");

subplot(1, 2, 2)
bode(H2);   % Zeichnung vom Bode-Diagramm für (b)
title("Bode Diagram (b)");