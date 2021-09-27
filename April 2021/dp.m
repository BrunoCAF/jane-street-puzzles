function M = dp(S)

M = zeros(4, 16);

pwin = @(X, Y) (Y./(X+Y));
% 1º round:
M(1, :) = pwin(S, S(end:-1:1));

% nº round:
for n = 2:4
    M(n,:) = (M(n-1,:) * (opponent(n,(1:16)')'.* pwin(S, S'))).* M(n-1,:);
end

end