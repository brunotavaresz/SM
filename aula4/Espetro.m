function [X,f] = Espetro(x,Ta)
    N= length(x);
    X=fftshift(fft(x));
    t = 0:Ta:1-Ta;
    Fa=1/Ta;

    if rem(N,2) == 0
        f = (-N/2 : N/2 - 1) * (Fa/N);
    else
        f = (-(N-1)/2 : (N-1) / 2) * (Fa/N);
    end

    stem(f, abs(X)/N);
    xlabel("Frequência (Hz)")
    ylabel("Magnitude")
    grid;
end