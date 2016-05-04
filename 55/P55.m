x = [];

for i = 1:1e4-1,
    if(isLychrel(i)==1)
        x = [x i];
    end
end

disp(length(x));