X = nchoosek(1:10,5);

for i = 1:size(X,1),
    x = perms(X(i,:));
    o = 1:10;
    o(X(i,:)) = [];
    o = perms(o);
    
    
    for j = 1:size(x,1),
        z = x(j,:);
        for k = 1:size(o,1),
            if(mag(z,o(k,:)) == 1),
                return;
            end
        end
    end
    
end

% z = 5  3  1  4  2 %
% o = 6  10 9  8  7 %
% Answer is 6531031914842725 %
% i.e. 6,5,3; 10,3,1; 9,1,4; 8,4,2; 7,2,5 %