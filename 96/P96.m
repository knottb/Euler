clear all;
data;

x = 0;
for i = 1:50,
    disp(i);
    P = M{i};
    P = solveSDK(P);
    x = x + P(1,1:3)*[100;10;1];
end
