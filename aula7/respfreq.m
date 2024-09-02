function [H, f] = respfreq(num, den, fa)
    M = 1000;
    H = freqz(num, den, 1000, fa, 'whole');
    H =  fftshift(H);
    f = (-M/2 : M/2 - 1) * (fa/M);
    plot(f, abs(H))
end