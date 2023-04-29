close all
clear
clc

n = 11
M = zeros(n);
s = 1:2:n;
M(s,s) = 2;
M([1, n],:) = 1;
M(:,[1, n]) = 1;
pocet_s = sum(sum(M([2:n-1],[2:n-1])))/2;
a = 0;
while ismember(2,M) == 1
    a = a + 1;
%for j = 1:20
    X = randi([3, floor((n-1)/2)-1],1)*2+1;
    Y = randi([, floor((n-1)/2)-1],1)*2+1;
    M(X, Y) = 1;
    stavbaX = randi([-1,1],1);
    stavbaY(stavbaX ~= 0) = 0;
    stavbaY(stavbaX == 0) = randi([1,2],1);
    stavbaY(stavbaY == 2) = -1;
    zedX = X + stavbaX;
    zedY = Y + stavbaY;
    while M(zedX, zedY) ~= 1;
    M(zedX, zedY) = 1;
    zedX = zedX + stavbaX;
    zedY = zedY + stavbaY  ;  
    end
end
M