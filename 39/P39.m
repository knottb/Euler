

x = zeros(1,1000);
for i = 1:1000,
    for j = i+1:1000,
        k = i^2 + j^2;
        k = sqrt(k);
        q = round(i+j+k);
        if(k == round(k) && q <= 1000),
            x(q) = x(q) + 1;
        end
    end
end

[b ind] = max(x);
disp(ind);