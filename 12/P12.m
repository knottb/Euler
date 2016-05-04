x = sum(1:8000);
for i = 8001:16000,
    x = x + i;
    
    factors = 0;
    for j = 1:floor(sqrt(x)),
        if(mod(x,j) == 0) factors = factors+2; end;
        if(factors > 500) disp(x); return; end;
    end
    if(mod(i,500) == 0),
        [x, i, factors]
    end;
end