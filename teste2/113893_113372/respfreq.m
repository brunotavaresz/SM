function [H, f] = respfreq(num, den, fa)
    % H = resposta em frequência
    M = 1024;
    H = freqz(num, den, M, fa, 'whole');
    H = fftshift(H);
    f = (-M/2:M/2-1)*(fa/M);
end