clc
clear
close all
format compact

Nullen1 = roots([1 -2])    % Nullen von (a)
Polen1 = roots([1 2 10])   % Polen von (a)

fprintf(1,repmat('\n',1));  % Leertaste für bessere Visualisierung

Nullen2 = roots([1 2 5])   % Nullen von (b)
Polen2 = roots([1 4 13 0]) % Polen von (b)

fprintf(1,repmat('\n',1));

Nullen3 = roots([1 10 5])  % Nullen von (c)
Polen3 = roots([1 4 10 6]) % Polen von (c)

