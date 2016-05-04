x = 0;
i = [1,1];
while i(2) < 4000000,
    if(mod(i(2),2) == 0)
        x = x + i;
    end
    temp = i(2);
    i(2) = i(1) + i(2);
    i(1) = temp;
end

disp(x)