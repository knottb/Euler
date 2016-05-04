function k = singularNum(num),
    switch num
        case {1,2,6,10}
            k = 3; return;
        case {4,5,9}
            k = 4; return;
        case {3,7,8}
            k = 5; return;
        case {11,12}
            k = 6; return;
        case {15,16}
            k = 7; return;
        case {13,14,18,19}
            k = 8; return;
        case 17
            k = 9; return;
        otherwise
            k = 0; return;
    end
end