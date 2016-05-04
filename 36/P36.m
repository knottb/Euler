x = [];

for i = 1:1e6-1,
    
    if(~isPalin(i,10)), continue; end;
    if(~isPalin(i,2)), continue; end;
    x = [x i];  
end

disp(sum(x));