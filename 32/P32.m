x1 = [];
x2 = [];

for i = 1:98,
    for j = 123:ceil(10000/i),
        if(panMult(i,j) == 1),
            x1 = [x1 i];
            x2 = [x2 j];
        end
        
    end
end

disp(sum(unique(x1.*x2)));