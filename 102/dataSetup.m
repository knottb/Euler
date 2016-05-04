fin = fopen('triangles.txt');
tar = fopen('data.m','w');



for i = 1:1000,
    k = fgetl(fin);
    
    fwrite(tar,'M{');
    fwrite(tar,sprintf('%d',i));
    fwrite(tar,'} = [');
    
    l = strread(k,'%s','delimiter',',');
    
    for j = 1:3,
        fwrite(tar,l{2*j-1});
        fwrite(tar,', ');
    
        fwrite(tar,l{2*j});
        if(j~=3), fwrite(tar,'; '); end;
    end
    
    fwrite(tar,'];');
    fwrite(tar, 10);
end






fclose(fin);
fclose(tar);