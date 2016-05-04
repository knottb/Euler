function x = wordVal(n),

    x = 0;
    for i = 1:length(n),
        x = x + (n(i)-'A') + 1;
    end
end