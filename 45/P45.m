
x = 285;
while(1),
    x = x+1;
    
    T = x*(x+1)/2;
    k = roots([1.5, -.5, -T]);
    
    k = round(k(1));
    P = k*(3*k-1)/2;
    
    if(P ~= T), continue; end;
    
    
    
    k = roots([2, -1, -T]);
    k = round(k(1));
    H = k*(2*k-1);
    if(H == T), break; end;
end

disp(T);