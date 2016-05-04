clear all;

load('M.mat');
M = sort(M);

x = 0;
for i = 1:length(M),
    x = x + i*wordVal(M{i});
end

disp(x);