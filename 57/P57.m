n = 1;
k = 2;

x = 0;
for i = 1:1000,
    tempK = 2*k+n;
    n = k;
    k = tempK;
    
    
    numNum = ceil(log10(n+k+1));
    numDenom = ceil(log10(k+1));
    
    
    disp([numNum numDenom]);
    
    if(numNum > numDenom),
        x = x + 1;
    end
    
    
    if(k > 1000);
        n = n/1000;
        k = k/1000;
    end
    
    
end
