function H = Entropia(Texto)
    [~, frequencia] = Alfabeto2(Texto);
    prob = frequencia/100;
    H = -sum(prob.*log2(prob));
end