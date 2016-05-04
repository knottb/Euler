x = 7652413;
for i = 1:1e7,
    if(isPandigital(i) && isprime(i)) 
        x = i
    end
end