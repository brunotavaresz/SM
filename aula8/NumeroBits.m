function NumBits = NumeroBits(Texto)
    [Simbolos, frequencia] = Alfabeto2(Texto);
    frequencia = sort(frequencia, 'ascend');
    L = length(Texto);
    nsim = frequencia * L /100;
    ar = 1: length(Simbolos);
    NumBits = sum(ar .* nsim);

