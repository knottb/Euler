

for a = 1:500,
    for b = 1:500,
        c = 1000-a-b;
        if(a^2 + b^2 == c^2) disp(a*b*c); return; end;
    end
end