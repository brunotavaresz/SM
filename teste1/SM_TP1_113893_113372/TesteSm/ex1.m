
Ta = 0.001; % Período de amostragem
T0 = 1;   % Período
K = 5;      % nº harmonicas

% Gerar uma onda quadrada
t = 0:Ta:1;
x = square(2 * pi * t / T0);

% Calcular coeficientes
coeficientes = calcularCoeficientes(Ta, T0, x, K);

% Mostrar coeficientes
disp(abs(coeficientes));
