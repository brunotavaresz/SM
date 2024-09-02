Simbolos = 'A!LPO';
frequencia = [20, 5, 25, 15, 35];
probabilidade = frequencia ./sum(frequencia);

dicionario = huffmandict(1:5, probabilidade);
disp(dicionario);

H = -sum(probabilidade.*log2(probabilidade));
disp(H);
