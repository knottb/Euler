function k = num2099(num)

    if(num < 20),
        k = singularNum(num);
        return;
    end
    if(mod(num,10) == 0) k = teenNum(num/10); return; end;
    
    k = teenNum(floor(num/10)) + singularNum(mod(num,10));
end