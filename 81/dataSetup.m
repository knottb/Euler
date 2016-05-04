fin = fopen('matrix.txt');
tar = fopen('data.m','w');

fwrite(tar,'M = [');
for i = 1:80,
    k = fread(fin,1);
    while(k~=10)
        fwrite(tar,k);
        k = fread(fin,1);
    end
    fwrite(tar,'; ...');
    fwrite(tar,k);
    
end

fclose(fin);
fclose(tar);