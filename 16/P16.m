x = zeros(1,1000);
x(1) = 1;

for i = 1:1000,
    x = 2*x;
    for j = 1:999,
        if(x(j) > 9),
            x(j+1) = x(j+1) + floor(x(j)/10);
            x(j) = mod(x(j),10);
        end
    end
end


disp(sum(x));