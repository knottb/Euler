fin = fopen('triangle.txt');
tar = fopen('data.m','w');

fwrite(tar,['M = zeros(100,100);' 10]);

for i = 1:100,
    fwrite(tar,sprintf('M(1:%d,%d) = [',i,i));
    k = fread(fin,3*i-1);
    fwrite(tar,k);
    fwrite(tar,[']'';', 10]);
    if(i<100)
        fread(fin,1);
    end
end

fclose(fin);
fclose(tar);