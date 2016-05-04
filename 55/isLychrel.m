function x = isLychrel(n)
    x = 1;
    for i = 1:50,
        n = L(n);
        if(isPalin(n,10)),
            x = 0;
            return;
        end;
    end
end