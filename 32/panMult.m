function x = panMult(a,b)
    c = a*b;
    p = 1:9;
    x = 0;
    
    while(a > 0 && ~isempty(p))
        dig = mod(a,10);
        k = find(p==dig);
        if(isempty(k)), return; end;
        p(k) = [];
        a = floor(a/10);
    end

    while(b > 0 && ~isempty(p))
        dig = mod(b,10);
        k = find(p==dig);
        if(isempty(k)), return; end;
        p(k) = [];
        b = floor(b/10);
    end
    
    while(c > 0 && ~isempty(p))
        dig = mod(c,10);
        k = find(p==dig);
        if(isempty(k)), return; end;
        p(k) = [];
        c = floor(c/10);
    end
    
    x = isempty(p);





end