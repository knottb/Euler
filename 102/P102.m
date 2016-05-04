close all; clear all;
clc;

data;


x = 0;
for i = 1:1000,
    P = M{i};
    x = x + contains0(P(1,:),P(2,:),P(3,:));
end


disp(x);