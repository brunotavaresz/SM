function [x,t] = Reconstroi(X,f)
    N = length(X);
    x = ifft(ifftshift(X));
 
    
    dummy = diff(f);
    Fa = dummy(1) * N;
    Ta = 1/Fa;
    t = (0:N-1)*Ta;


end