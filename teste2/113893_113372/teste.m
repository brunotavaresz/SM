% Guilherme Santos 113893
% Bruno Tavares    113372

[x, t, num, den] = exame2(1223,2);
a = diff(t);

%1
% A variável "a" é um array que contém a diferança dos instantes de 
% amostragem, ou seja, qualquer valor de "a" é o Tempo de Amostragem (Ta)
% Fa = 1/Ta
Ta = a(1);  % pode-se escolher qualquer valor de "a" pois são todos iguais
Fa = 1/Ta;

%2
% y é o sinal filtrado
y = filter(num, den, x);
% Y é o conteúdo de frequência do sinal filtrado
[Y, f] = Espetro(y, Ta);
figure(1);
stem(f, abs(Y));
xlabel("Frequência (Hz)");
title("Conteúdo de frequência do sinal filtrado");

%3
[H, fH] = respfreq(num, den, Fa);
figure(2)
plot(fH, abs(H));
title("Módulo da resposta em frequência");
xlabel("Frequência (Hz)");
% A resposta em frequência do filtro diz nos como o filtro afeta as diferentes 
% frequências de um sinal.
%
% Como é possível ver no gráfico, por volta da frequência 150Hz, o filtro
% começa a alterar as frequências menores onde, a partir de 50Hz anula-as
% completamente. Por isso, o resultado da pergunta anterior apresenta um
% espetro que não tem nenhum ponto onde a frequência é menor que 50Hz, ou
% seja, essas frequências foram filtradas.

%4
atraso = 140*0.001;  % o atraso é o valor convertido para segundos
D = round(atraso/Ta); % D é o número de amostras de atraso

% z é mais pequeno que x pois é o seu atraso de D amostras
z = zeros(1, length(x)-D); 
for n=D+1:length(x)
    z(n-D) = x(n) - 0.8*x(n-D);
end

    

















