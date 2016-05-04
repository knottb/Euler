function c = num2word(num),
    if(num == 1000) c = 11; return; end;

    
    if(mod(num,100) == 0)
        c = 7 + singularNum(num/100);
        return;
    end

    if(num < 100)
        c = num2099(num);
        return;
    end

    c = singularNum(floor(num/100)) + 10 + num2099(mod(num,100));

end