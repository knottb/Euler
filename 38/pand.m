function x = pand(n)
   
    p = 1:9;
    x = 0;
    while(~isempty(n)),
        if(n(1) == 0),
            n(1) = [];
            continue;
        end
        
        dig = mod(n(1),10);
        k = find(p==dig);
        if(isempty(k)), return; end;
        p(k) = [];
        n(1) = floor(n(1)/10);
    end


    if(~isempty(p)) return; end;
    x = 1;
end