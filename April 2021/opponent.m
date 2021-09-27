function O = opponent(n, i)

O = (delta(n, 1:16) == delta(n, i));
if n == 1
    O = O.*(1:16 ~= i);
else
    O = O.*not(delta(n-1, 1:16) == delta(n-1, i));
end
end