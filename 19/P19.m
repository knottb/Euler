x = 1;
count = 0;

x = x + 366;
x = mod(x,7);

for i = 1:100
    % January - 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    
    % February - 28 or 29%
    if(mod(x,7) == 0), count = count + 1; end;
    if(mod(i,4) == 0), x = x + 29;
    else x = x + 28;
    end
    
    % March - 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    
    % April - 30 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 30;
    
    % May   - 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    
    % June  - 30 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 30;
    
    % July  - 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    % August- 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    
    % Septem- 30 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 30;
    
    % Octob - 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    
    % Novem - 30 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 30;
    
    % Decem - 31 %
    if(mod(x,7) == 0), count = count + 1; end;
    x = x + 31;
    
end

disp(count);