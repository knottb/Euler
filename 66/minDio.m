function x = minDio(D)
    y = 1;
    while(1)
        x2 = 1+D*y^2;
        
        if(floor(sqrt(x2))^2 == x2),
            x = sqrt(x2);
            disp([x y]);
            return;
        end
        y = y+1;
    end
end