function x = chain(n)

    y = n;
    while(1)
        n = sumFacts(n);
        if(~isempty(find(y==n, 1))) break; end;
        
        y = [y n];
    end

    x = length(y);







end