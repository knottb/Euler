function x = permutable(a,b,c)
    x = 0;
    
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
    
    
    C = [];
    while(c > 0),
        C = [C mod(c,10)];
        c = floor(c/10);
    end

    C = sort(C);
    
    if(~all(A==C)) return; end;
    
    x = 1;

end
