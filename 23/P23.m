clear;
x = [];

for i = 12:28123,
    if(d(i) <= i),
        x = [x i];
    end
end


X = ones(length(x),1)*x;
X = X + X';
X = unique(X(:));
X = X(X < 28124);

p = 1:28123;
p(X) = [];

disp(sum(p));