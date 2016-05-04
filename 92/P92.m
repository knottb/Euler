x = 0;
for i = 1:1e7-1,
    x = x + chain89(i);
end

disp(x);