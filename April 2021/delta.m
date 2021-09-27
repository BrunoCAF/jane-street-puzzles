function D = delta(n, i)

if n == 1
    D = abs(17 - 2*i);
else
    D = abs(16 - 2*delta(n-1, i));
end

end