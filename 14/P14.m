count = 0;
num = 0;

for i = 2:1e6-1,
    c = collatz(i);
    if(c > count),
        num = i;
        count = c;
    end
end