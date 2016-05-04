function x = primeP2sq(n),
    p = primes(n-1);

    sq = 1:sqrt(n-1);
    sq = 2*sq.^2;

    x = 0;
    for i = 1:length(p),
        for j = 1:length(sq),
            if( n == p(i) + sq(j)),
                x = 1;
                return;
            end
        end
    end
    
end