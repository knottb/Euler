n = 4;


x = 0;
cons = 0;
s = 0;
while(1)
    x = x + 1;
    k = length(unique(factor(x)));
    if( k ~= n),
        cons = 0;
        continue;
    end;
    
    cons = cons + 1;
    if(cons == n), break; end;
end

disp(x-3);