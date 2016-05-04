clear; clc;
data;

P = zeros(80,80);
P(1,1) = M(1,1);
for i = 1:80
    for j = 1:80
        if(i == 1)
            if(j==1), continue; end;
            P(i,j) = M(i,j) + P(i,j-1);
        elseif (j ==1)
            if(i==1), continue; end;
            P(i,j) = M(i,j) + P(i-1,j);
        else
            P(i,j) = M(i,j) + min([P(i-1,j),P(i,j-1)]);
        end
    end
end


disp(P(end,end));