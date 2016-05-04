clear; clc;
data;

P = Inf(80,80);
P(1,1) = M(1,1);
PP = zeros(80,80);
while(~all(P == PP))
    PP = P;
    for i = 1:80,
        for j = 1:80
            
            %%%%%
            if(i == 1)
                if(j==1) continue; end;
                if(j==80)
                    P(i,j) = min([P(i,j),P(i,j-1)+M(i,j),P(i+1,j)+M(i,j)]);
                else
                    P(i,j) = min([P(i,j),P(i,j-1)+M(i,j),P(i+1,j)+M(i,j), P(i,j+1)+M(i,j)]);
                end
                continue;
            end
            
            %%%%
            if(j==1)
                if(i == 80)
                    P(i,j) = min([P(i,j),P(i,j+1)+M(i,j),P(i-1,j)+M(i,j)]);
                else
                    P(i,j) = min([P(i,j),P(i,j+1)+M(i,j),P(i-1,j)+M(i,j),P(i+1,j)+M(i,j)]);
                end
                    
                continue; 
            end
            
            %%%%%
            if(i==80)
                if(j==80)
                    P(i,j) = min([P(i,j),P(i-1,j)+M(i,j),P(i,j-1)+M(i,j)]);
                else
                    P(i,j) = min([P(i,j),P(i-1,j)+M(i,j),P(i,j-1)+M(i,j),P(i,j+1)+M(i,j)]);
                end
                continue;
            end
            
            %%%%%
            if(j==80)
                P(i,j) = min([P(i,j),P(i-1,j)+M(i,j),P(i,j-1)+M(i,j),P(i+1,j)+M(i,j)]);
                continue;
            end
            
            %%%%%
            P(i,j) = min([P(i,j),P(i-1,j)+M(i,j),P(i,j-1)+M(i,j),P(i+1,j)+M(i,j),P(i,j+1)+M(i,j)]);
            
        end
    end
end


disp(P(80,80));