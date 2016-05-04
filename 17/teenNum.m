function k = teenNum(num)
    switch num
        case {4,5,6}
            k = 5; return;
        case {2,3,8,9}
            k = 6; return;
        case 7
            k = 7; return;
        otherwise
            k = 0;
    end
    
    
end