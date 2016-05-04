
z = ones(1,28123);
for i = 1:length(x),
    for j = i:length(x),
        if(x(i)+x(j) > 28123) continue; end;
        z(x(i) + x(j)) = 0;
    end
end

k = 1:28123;
k(z==1) = 0;
disp(sum(k));
