phi = Randn(1, N) * pi;
for k=2:N
    phi_1(k) = phi_1(k-1) + (phi(k) + pphi(k-1)) * (Ta/2);
end
