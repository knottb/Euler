function x = sumFacts(n)

    x = 0;
    while(n > 0)
        x = x + factorial(mod(n,10));
        n = floor(n/10);
    end
end