function x = fracfunc(n,p)

x = 0;
if(mod(n,10) == floor(p/10)),
    k = floor(n/10) / mod(p,10);
    s = n/p;
    
    
    if(k == s) x = 1; end;
end
end