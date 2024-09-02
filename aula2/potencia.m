function P = potencia(x,Ta,T)
    maxIndex = T/Ta;
    x = x(:,1:maxIndex);
    P = x*x'/maxIndex;
end