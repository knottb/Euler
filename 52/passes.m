function x = passes(n)

    x = 0;
    k = vectorize(n);
    k = sort(k);
    
    K = length(k);
    
    k2 = sort(vectorize(2*n));
    if(length(k2) > K), return; end;
    if(~all(k==k2)), return; end;

    k3 = sort(vectorize(3*n));
    if(length(k3) > K), return; end;
    if(~all(k==k3)), return; end;

    k4 = sort(vectorize(4*n));
    if(length(k4) > K), return; end;
    if(~all(k==k4)), return; end;
    
    k5 = sort(vectorize(5*n));
    if(length(k5) > K), return; end;
    if(~all(k==k5)), return; end;
    
    k6 = sort(vectorize(6*n));
    if(length(k6) > K), return; end;
    if(~all(k==k6)), return; end;
    
    x = 1;
end