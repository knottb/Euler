x = [];

for i = 10:1000000
    if(sumPowOfDigits(i,5) == i),
        x = [x i]
    end
end

disp(sum(x));