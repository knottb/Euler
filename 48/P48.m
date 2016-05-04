x = 0;
for i = 1:1000,
    x = x + modularPow(i,i,15);
    x = mod(x,10^20);
end

x = mod(x,1e10);
disp(x);