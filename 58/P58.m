
NDP = 0;
x = 1;
stepSize = 2;
ND = 1;

while(1),
    ND = ND + 4;
    for i = 1:4,
        x = x + stepSize;
        if(isprime(x)),
            NDP = NDP + 1;
        end
    end
    if(NDP/ND < .1) break; end;
    stepSize = stepSize + 2;
end

disp(stepSize + 1);