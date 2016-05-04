
x = [];
for i = 1:1e6,
    n = i;
    k = 2;
    while totalDigits(n) < 9,
        n = [n i*k];
        k = k + 1;
    end
    
    if(totalDigits(n) > 9), continue; end;
    
    if(pand(n)) x = [x i]; end;
end