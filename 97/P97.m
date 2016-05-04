
x = 1;

for i = 1:7830457,
    x = 2*x;
    x = mod(x,1e10);
end
x = x*28433;
x = x + 1;
x = mod(x,1e10);

disp(x);