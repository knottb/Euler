function x = isCircP(n)

    D = ceil(log10(n+1));
    x = 0;
    for i = 1:D,
        if(~isprime(n)), return; end;
        
        k = mod(n,10);
        n = floor(n/10);
        n = n + k*10^(D-1);
    end



    x = 1;






end