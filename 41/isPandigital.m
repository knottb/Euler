function x = isPandigital(n)
    x = 0;
    D = ceil(log10(n+1));
    if(D > 9), return; end;
    p = 1:D;
    
    while(~isempty(p))
        dig = mod(n,10);
        k = find(p==dig);
        if(isempty(k)), return; end;
        p(k) = [];
        n = floor(n/10);
    end
    x = 1;





end