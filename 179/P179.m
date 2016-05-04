close all; clear all;

c = 0;
x = 0;
for i = 3:1e7-1,
    if(mod(i,1e5) == 0), disp(i/1e5); end;
    fs = length(unique(factor(i)));
    if(fs == x) c = c + 1; end;
    x = fs;
end