x = [];

for i = 10:99999,
    if(sumFacts(i) == i), x = [x i]; end;
end

disp(sum(x));