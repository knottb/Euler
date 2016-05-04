function x = numPrimes(n)

    D = ceil(log10(n+1));
    
    x = 0;
    for i = 1:D-1,
        p = nchoosek(1:D,i);
        for j = 1:size(p,1),
            rep = p(j,:);
            k = numP(n,rep,D);
            if(k > x), x = k; end;
        end
    end
end