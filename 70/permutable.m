function x = permutable(a,b)
    x = 0;
    
    c = ceil(log10(a+1));
    d = ceil(log10(b+1));
    if(c~=d), return; end;
    
    A = [];
    B = [];
    while(a > 0),
        A = [A mod(a,10)];
        a = floor(a/10);
    end
    
    while(b > 0),
        B = [B mod(b,10)];
        b = floor(b/10);
    end
    
    A = sort(A);
    B = sort(B);
    if(~all(A == B)), return; end;
    
    x = 1;

end
