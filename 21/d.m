function x = d(n)
    x = 1;
    for i = 2:floor(sqrt(n)),
        if(mod(n,i) == 0),
            x = x + i + n/i;
        end
    end
end