function x = vectorize(n)

    x = [];
    while( n > 0 )
        x = [mod(n,10) x];
        n = floor(n/10);
    end
end