function [X, f] = Espetro(x, Ta)
    N = length(x);
    X = fftshift(fft(x));
    Fa = 1/Ta;
    if rem(N, 2) == 0
        f=(-N/2:N/2 - 1)*(Fa/N);
    else
        f=(-(N-1)/2:(N-1)/2)*(Fa/N);
    end
end