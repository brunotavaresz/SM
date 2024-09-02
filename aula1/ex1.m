% Defina o período de amostragem
Ta = 0.01; % segundos

% Defina o intervalo de tempo desejado
t_inicio = 0; % segundos
t_fim = 5;    % segundos

% Calcule o número de pontos de amostragem
num_amostras = round((t_fim - t_inicio) / Ta) + 1;

% Crie um vetor de tempo no intervalo desejado
t = linspace(t_inicio, t_fim, num_amostras);

% Calcule o sinal x(t)
x = 2 * sin(4 * pi * t);

% Salve o vetor de tempo e o sinal em um arquivo do MATLAB
save('sinal_x.mat', 't', 'x');
