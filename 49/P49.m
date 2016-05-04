p = primes(1e4);
p = p(p>999);

x = [];

for i = 1:length(p)-2,
    k = p(i);
    for j = i+1:length(p),
        
        l = p(j);
        d = l-k;
        s = l+d;
        if(s < 1e4 && isprime(s))
            if(permutable(k,l,s) == 1),
                x = [x;k, l, s]; 
            end
        end;
    end
end