x = 0;
for n = 23:100,
    for k = 2:n-2,
        if(nchoosek(n,k) > 1e6) x = x + 1; end;
    end
end