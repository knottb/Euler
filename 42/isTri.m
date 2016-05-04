function x = isTri(n)

    s = sqrt(2*n);
    k = floor(s+1);
    p = floor(s);
    
    x = 0;
    if(k*p/2 == n) x =1; end;
end