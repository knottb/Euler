fileID = fopen('p042_words.txt');
M = textscan(fileID, '%s','Delimiter',',');
fclose(fileID);
M = M{1};

x = 0;
for i = 1:length(M),
    word = M(i);
    word = word{1};
    k = wordVal(word);
    if(isTri(k)), 
        x = x + 1; 
        disp(word);
    end;
end