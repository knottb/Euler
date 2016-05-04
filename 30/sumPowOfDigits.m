function x = sumPowOfDigits(n,pow)

x = 0;
while( n > 0 ),
    x = x + mod(n,10)^pow;
    n = floor(n/10);
end







end