function x = truncLR(n)

    x = 0;
    D = ceil(log10(n+1));
    for i = D-1:-1:0,
        if(~isprime(n)) return; end;
        n = mod(n,10^i);
    end
        
    x = 1;
end