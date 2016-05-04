x = zeros(200,1);
x(1) = 1;

for i = 2:100,
    x = x*i;
    
    for j = 1:199,
        if(x(j) > 9),
            x(j+1) = x(j+1) + floor(x(j)/10);
            x(j) = mod(x(j),10);
        end
    end
end


disp(sum(x));