x1 = [];
x2 = [];


for i = 11:89,
    for j = i+1:99,
        if(fracfunc(i,j)==1), 
            x1 = [x1 i];
            x2 = [x2 j];
        end
    end
end