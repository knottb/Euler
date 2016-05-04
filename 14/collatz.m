function c = collatz(i)
    x = i;
    c = 0;
    while x ~= 1
        % x even -> x/2
        if(mod(x,2) == 0)
            x = x/2;
        else
            x = 3*x+1;
        end
        
        c = c + 1;
    end
end