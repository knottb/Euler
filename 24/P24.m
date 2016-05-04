x = [];
s = 1e6-1;
for i = 9:-1:0,
    k = factorial(i);
    x = [x floor(s/k)];
    s = mod(s,k);
end

x = x + 1;
p = 0:9;
y = [];
for i = 1:10,
    y = [y p(x(i))];
    p(x(i)) = [];
end

disp(10.^(9:-1:0)*y')