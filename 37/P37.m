
n = 10;
x = [];

while length(x) < 10,
    n = n + 1;
    if(~truncRL(n)) continue; end;
    if(~truncLR(n)) continue; end;
    
    x = [x n];
end

x = [x 739397];

disp(sum(x));