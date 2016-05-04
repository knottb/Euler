data;

% Path Value Iteration %
X = zeros(100,100);
X(1,1) = M(1,1);
for i = 2:100,
    for j = 1:100,
        if(j == 1) k = X(j,i-1);
        else k = max([X(j, i-1) X(j-1,i-1)]);
        end
        X(j,i) = M(j,i) + k;
    end
end


disp(max(max(X)));