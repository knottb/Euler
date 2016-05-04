n = 1:1e6;

k = zeros(1,1e6);
for i = 1:1e6,
    if(mod(i,1e5)==0), disp(i); end;
    k(i) = totient(i);
end

m = n./k;

[b ind] = max(m);