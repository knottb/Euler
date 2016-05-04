
p = perms(0:9);

x = 0;
s = [100;10;1];
t = 10.^(9:-1:0);
for i = 1:size(p,1),
    v = p(i,:);
    
    if(v(1) == 0), continue; end;
    
    k = v(2:4)*s;
    if(mod(k,2) ~= 0), continue; end;
    
    k = v(3:5)*s;
    if(mod(k,3) ~= 0), continue; end;
    
    k = v(4:6)*s;
    if(mod(k,5) ~= 0), continue; end;
    
    k = v(5:7)*s;
    if(mod(k,7) ~= 0), continue; end;
    
    k = v(6:8)*s;
    if(mod(k,11) ~= 0), continue; end;
    
    k = v(7:9)*s;
    if(mod(k,13) ~= 0), continue; end;
    
    k = v(8:10)*s;
    if(mod(k,17) ~= 0), continue; end;
    
    x = x + sum(v.*t)
end