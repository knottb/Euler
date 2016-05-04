function x = mag(y,z),

    x = 0;

    M1 = z(1) + y(1) + y(2);
    
    M2 = z(2) + y(2) + y(3);
    if(M1 ~= M2), return; end;
    
    M3 = z(3) + y(3) + y(4);
    if(M3 ~= M1), return; end;
    
    M4 = z(4) + y(4) + y(5);
    if(M4 ~= M1), return; end;
    
    M5 = z(5) + y(5) + y(1);
    if(M5 ~= M1), return; end;
    
    x = 1;
end