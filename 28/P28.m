n = 1;
s = 2;
x = 1;

for i = 3:2:1001,
    for j = 1:4,
        n = n + s;
        x = [x n];
    end
    s = s + 2;
end

disp(sum(x));