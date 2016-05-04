clear; clc;
data;

ind = 1;
num = log2exp(M(1,1),M(1,2));
for i = 2:1000,
    
    k = log2exp(M(i,1),M(i,2));
    
    if(k > num)
        num = k;
        ind = i;
    end
    
end




disp(ind);