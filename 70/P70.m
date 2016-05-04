clc;
z = 552;
nbyp = 1.0014;
for i = 2272826:1e7,
    if(mod(i,1e5)==0) disp(sprintf('%d%%',i/1e5)); end;
    a = totient(i);
    if(i/a < nbyp),
        if(permutable(a,i)),
            nbyp = i/a;
            z = i;
        end
    end
end