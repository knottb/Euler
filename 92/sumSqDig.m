function x = sumSqDig(n)

    x = 0;
    while(n > 0)
        k = mod(n,10);
        x = x + k^2;
        
        n = floor(n/10);
    end
end