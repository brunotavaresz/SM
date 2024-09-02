Ta = 0.01;
t = 0:Ta:5;
m = 2* sin(4*pi*t);
figure(1);
plot(t,m)

n = cos(10 * pi * t);
figure(2);
plot(t,n)

o = m .*n;
figure(3);
plot(t,o)

t2 = 0:Ta:10;
figure(4);
p = 3 * sin(pi * t2) + 2 * sin(6 * pi * t2);
plot(t2, p);

t3 = 0:Ta:5;
t4=t3;
q = 2 * sin(2*pi (2*t3 + t4));
figure(5);
plot(t3, t4, q)


