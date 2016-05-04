function x = candidates(P,i,j)

    c = zeros(1,9);
    grpi = floor((i-1)/3);
    grpj = floor((j-1)/3);
    
    for k = 1:9,
        if(sum(P(i,:)==k) > 0),
            c(k) = 1;
            continue; 
        end;
        if(sum(P(:,j)==k) > 0), 
            c(k) = 1; 
            continue; 
        end;
        if(sum(sum(P(3*grpi+1:3*grpi+3,3*grpj+1:3*grpj+3)==k)) > 0),
                 c(k) = 1; 
                 continue; 
        end;
    end
    
    x = [];
    for k = 1:9,
        if(c(k)==0), x = [x k]; end;
    end
end