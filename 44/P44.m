p = [];

s = 5000;
for i = 1:s,
    k = i*(3*i-1)/2;
    p = [p k];
end


D = Inf;
for i = 2:s-2,
    for j = i+1:s-1,
        k = p(i) + p(j);
        if(isempty(find(p==k))), continue; end;
        
        k = p(j) - p(i);
        if(isempty(find(p==k))), continue; end;
        
        if(D > k), D = k; end;
    end
end