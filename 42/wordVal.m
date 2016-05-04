function x = wordVal(str)
    x = 0;
    for i = 2:length(str)-1,
        x = x + str(i)-'A'+1;
    end
end