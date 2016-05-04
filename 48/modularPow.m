function x = modularPow(num,pow,base)
    x = 1;
    
    while(pow > 0);
        if(mod(pow,2) == 1),
            x = x * num;
            x = mod(x,10^(25));
        end;
        pow = floor(pow/2);
        num = mod(num^2,10^(25));
    end

    x = mod(x,10^20);
end