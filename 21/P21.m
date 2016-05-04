x = zeros(1,9999);

for i = 1:9999,
    x(i) = d(i);
end

k = 0;
for i = 1:9999,
    if(x(i) < 10000),
        if(x(x(i)) == i && d(i)~= i)
            k = k + i; 
        end;
    end
end