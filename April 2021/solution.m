S = flipper(0);
M = dp(S);
seed = find(S==2);
prob = M(4, seed); n_star = 0;

for n = 1:120
    S = flipper(n);
    M = dp(S);
    seed = find(S==2);
    if M(4, seed) >= prob
        prob = M(4, seed);
        n_star = n;
    end
end
