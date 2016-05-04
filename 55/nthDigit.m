function k = nthDigit(num,n,base)
    k = mod(floor(num/(base^(n-1))),base);
end