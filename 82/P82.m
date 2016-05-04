clear;
data;


P = zeros(80,80);
P(:,1) = M(:,1);

for i = 2:80,
    P(:,i) = P(:,i-1) + M(:,i);
    for j = 1:80,
        P(1,i) = min([P(1,i),P(2,i)+M(1,i)]);
        for k = 2:79
            P(k,i) = min([P(k,i),P(k-1,i)+M(k,i),P(k+1,i)+M(k,i)]);
        end
        P(80,i) = min([P(80,i), P(79,i) + M(80,i)]);
        
    end
    
end

disp(min(P(:,80)));