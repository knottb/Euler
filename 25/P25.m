x1 = zeros(1000,1); x1(1) = 1;
x2 = zeros(1000,1); x2(1) = 1;

k = 2;
while x2(1000) == 0
    x3 = x1 + x2;
    for i = 1:999,
        if(x3(i) > 9)
            x3(i+1) = x3(i+1) + floor(x3(i)/10);
            x3(i) = mod(x3(i),10);
        end
    end
    x1 = x2;
    x2 = x3;
    
    k = k + 1;
end


disp(k);