i = 0;

k = 2;
while i < 10001,
    
    if(isprime(k)) i = i + 1; end;
    k = k + 1;
    
end

disp(k-1);