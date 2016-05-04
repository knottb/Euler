clear; clc;
x = 500001;
k = 89;

for i = 74:1000
    if(mod(i,10)==0),display(sprintf('%d%%',i/10)); end;
    if(i == (round(sqrt(i)))^2), continue; end;
    z = minDio(i);
    if(z > x), k = i; x = z; end;
end