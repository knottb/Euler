
fid = fopen('p096_sudoku.txt');
tar = fopen('data.m','w');

for i = 1:50,
    k = fread(fid,5);
    k = fread(fid,2);
    fwrite(tar,'M{');
    fwrite(tar,k);
    fwrite(tar,'} = [');
    k = fread(fid,1);
    for j = 1:9,
        k = fread(fid,9);
        for l = 1:9,
            fwrite(tar,k(l));
            fwrite(tar,' ');
        end
        k = fread(fid,1);
        if j ~= 9,
            fwrite(tar,['; ... ', 10]);
        else
            fwrite(tar,[']; ', 10]);
        end
    end
    
    
end


fclose(tar);
fclose(fid);