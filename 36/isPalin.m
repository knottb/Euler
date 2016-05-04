function x = isPalin(n,base)

    D = ceil(log(n+1)/log(base));

    x = 0;
    for i = 1:floor(D/2),
        if(nthDigit(n,i,base) ~= nthDigit(n,D-i+1,base)),
            return;
        end
        
        
        
    end
    x = 1;
end