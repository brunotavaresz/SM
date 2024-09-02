Ta = 0.001;

%a)
f = (4*pi)/(2*pi);
T = 1/f;

t = 0:Ta:4*T;
x = 2*sin(4*pi*t);

pa = potencia(x,Ta,T)

%b)
f = (10*pi)/(2*pi);
T = 1/f;

t = 0:Ta:4*T;
y = sin(10*pi*t + pi/2);

pb = potencia(y,Ta,T)

%c)
f = (20*pi)/(2*pi);
T = 1/f;

t = 0:Ta:4*T;
p = sin(20*pi*t + 70*pi/180) + sin(20*pi*t + 200*pi/180);

pc = potencia(p,Ta,T)

%d)
f = gcd((6*pi)/(2*pi),(8*pi)/(2*pi));
T = 1/f;

t = 0:Ta:4*T;
z = sin(6*pi*t) + sin(8*pi*t);

pd = potencia(z,Ta,T)

%e)
f = gcd((6*pi)/(2*pi),(8*pi)/(2*pi));
T = 1/f;

t = 0:Ta:4*T;
w = sin(6*pi*t) + sin(8*pi*t + 0.1);

pe = potencia(w,Ta,T)

%f)
f0 = (6*pi)/(2*pi);
f1 = (7*pi)/(2*pi);
f2 = (8*pi)/(2*pi);

mdc1 = gcd(10*f0,10*f1);
f = 1/10 * gcd(mdc1,10*f2);
T = 1/f;

t = 0:Ta:4*T;
q = sin(6*pi*t) + sin(7*pi*t) + sin(8*pi*t);

pf = potencia(q,Ta,T)