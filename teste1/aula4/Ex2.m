%Ex2.

Ta = 0.01;
f0 = 1;
Np = 6;
k = 100;

ak = zeros(1,k);
bk = zeros(1,k-1);

impares = 1:2:k-1;
bk(impares) = 4./(impares*pi);
bk = [0,bk];

[x,t] = fourier_func(Ta,f0,Np,ak,bk);


figure(1);

plot(t,x);

xlabel('t');
ylabel('x(t)');
title("Grafico Onda Sinusoidal");
grid on;