x = [];

for i = 1:1e6-1,
    if(isCircP(i)), x = [x i]; end;
end

disp(length(x));