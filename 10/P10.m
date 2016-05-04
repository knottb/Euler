x = 0;

for i = 2:2000000-1,
    if(isprime(i)) x = x+i;
    end
end
    disp(x);