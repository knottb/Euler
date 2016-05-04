x = 38;
for i = 9585:1e6-1,
    if(mod(i,1e4)==0) display(sprintf('%d%%',i/1d4));end;
    if(chain(i)==60), x = x +1; end;
end