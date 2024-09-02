function[Simbolos, frequencia] = Alfabeto2(Texto)
    Simbolos = unique(Texto);
    frequencia = zeros(1, length(Simbolos));
    for i = 1: length(Simbolos)
        frequencia(i) = sum(Simbolos(i) == Texto) / length(Texto) * 100;
    end
end

