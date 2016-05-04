function x = solveSDK(P)
        cont = 0;
        x = [];
        
        % While Direct Solver Grows P %
        while(cont == 0),
            cont = 1;
            firsti = 0;
            firstj = 0;
            
            for i = 1:9,
                for j = 1:9,
                    if(P(i,j)~=0), continue; end;
                    c = candidates(P,i,j);
                    if(length(c) == 1),
                        cont = 0;
                        P(i,j) = c;
                    elseif(isempty(c)),
                        return;
                    else
                        if(firsti == 0),
                            firsti = i;
                            firstj = j;
                        end
                    end
                        
                        
                end
            end
        end
    
        if(all(all(P>0)))
            x = P;
            return; 
        end;
        
        % If not directly solvable, try values %
        i = firsti;
        j = firstj;
        PP = P;
        c = candidates(P,i,j);
        for k = c,
             PP(i,j) = k;
             KK = solveSDK(PP);
             if(~isempty(KK)),
                x = KK;
                return;
             end
        end
        
end