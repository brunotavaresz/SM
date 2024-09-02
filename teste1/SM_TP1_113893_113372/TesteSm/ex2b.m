[S, Fa] = exame(911, 1);

%2-b e c
Ta = 1 / Fa;
t= 0:Ta:1-Ta;
T = 0.1;
f0 = 1 / T;

figure(1)
subplot(2,1,2)
s = ifft(ifftshift(S));
N = length(s);  %Nº de amostras = 400
if rem(N,2) == 0
        f = (-N/2 : N/2 - 1) * (Fa/N);
    else
        f = (-(N-1)/2 : (N-1) / 2) * (Fa/N);
    end
stem(f,abs(S)/N);
xlabel("Hertz")

subplot(2,1,1)
xlabel("Segundos")
plot(t, s);

%f)
figure(2)
H=zeros(1,length(S));
inx = f>-120 & f< -70;
H(inx)=1;
inx= f>70 & f< 120;
H(inx)=1;
S1=S.*H;
s1 = ifft(ifftshift(S1));

plot(t, abs(s1))


