function x = chain89(n)

    x = 0;
    while(1)
        if(n == 1) return; end;
        if(n == 89) x = 1; return; end;
        
        n = sumSqDig(n);
    end














end