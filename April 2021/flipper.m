function S = flipper(n)

S = 1:16;

if n == 0
    i = 16; j = 16;
else
    t = 1:15;
    t = (t + t.*t)/2;
    i = sum(n <= t);
    j = i+1 + t(end+1 - sum(t-n >= 0)) - n;
end

x = S(i); S(i) = S(j); S(j) = x;

end