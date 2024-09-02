load('Guitar03.mat');
soundsc(x, fa);
t = (0:length(x)-1)*1/fa;
figure(1);
[X, f] = Espetro(x, 1/fa);
figure(2);
spectrogram(x, 1024, 512, 1024, fa, "yaxis");
colorbar
figure(3)
plot(x)

H = zeros(530000, 1);
inx = f > -400 & f <-100;
H(inx) = 1;
inx = f>100 & f <400;
H(inx) = 1;
X1 = X.*H;
figure(4);
subplot(2,1,1);
plot(f, H);
figure(5);
subplot(2,1,2);
stem(f, abs(X1))

figure(6);
[x1, t1] = Reconstroi(X1, f);
plot(t1,x1);

figure(7)
spectrogram(x1, 1024, 512, 1024, fa, "yaxis");