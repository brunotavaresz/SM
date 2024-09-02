[x, fa] = audioread('vozportugues.wav');
t = (0:length(x)-1)*1/fa;
figure(1)
spectrogram(x, 1024, 512, 1024, fa, 'yaxis'); colorbar
figure(2)
Espetro(x, 1/fa);

%2
teta=2*pi*(5000/fa);
xr=x+ 0.6*cos(teta*(0:length(x)-1)'+0.1*pi);
figure(3)
spectrogram(xr, 1024, 512, 1024, fa, 'yaxis'); colorbar
figure(4)
Espetro(xr, 1/fa);

%3
R=0.9;
teta=2*pi*(5000/fa);
num=[1 -2*cos(teta) 1];
den=[1 -2*R*cos(teta) R^2];
figure(5)
[H,f]=respfreq(num,den,fa);
y = filter(num, den, xr);
figure(6)
Espetro(y, 1/fa);
figure(7)
spectrogram(y, 1024, 512, 1024, fa, 'yaxis'); colorbar

%4
den=1;
a = 0.9;
D = 2500;
num=[1 zeros(1,D-1) a];
y = filter(num, den, x);
soundsc(y, fa);

