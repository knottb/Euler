function x = numP(n, r, D)

    x = 0;
    p = [];
    s = 10.^(0:D-1);
    while(n > 0),
        p = [p; mod(n,10)];
        n = floor(n/10);
    end

    for i = 0:9,
        p(r) = i;
        k = s*p;
        if(isprime(k)), x = x + 1; end;
    end
end