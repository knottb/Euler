n = 600851475143;
x = 1;
for i = 72:floor(sqrt(600851475143)),
    if(mod(n,i) == 0)
        if(isprime(n/i))
            x = n/i;
            break;
        elseif(isprime(i))
            x = i;
        end
    end
end

disp(x)