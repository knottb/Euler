fin = fopen('base_exp.txt');
tar = fopen('data.m','w');


fwrite(tar,'M = zeros(1000,2);');
fwrite(tar, 10);

for i = 1:1000,
    
    l = fgetl(fin);
    fwrite(tar,sprintf('M(%d,:) = [',i));
    fwrite(tar,l);
    fwrite(tar,['];' 10]);
end


fclose(fin);
fclose(tar);