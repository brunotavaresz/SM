function ck = calcularCoeficientes(Ta, To, x, K)
    % Número de amostras
    N = length(x);

    % Tempo
    t = 0:Ta:(N-1)*Ta;

    % Frequência
    f0 = 1 / To;

    ck = zeros(2*K + 1, 1);

    for k = -K:K
        ck(k + K + 1) = (1 / N) * sum(x .* exp(-1j * 2 * pi * k * t * f0));
    end
end
