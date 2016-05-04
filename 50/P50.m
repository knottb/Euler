n = 1e6;
p = primes(n);


ML = 0;
s = 0;
for i = 1:length(p)-23,
    
    for j = i+ML+1:length(p),
        k = sum(p(i:j));
        if(k > n), break; end;
        if(isprime(k)),
            ML = j-i+1;
            s = k;
        end
    end
end

disp(s);