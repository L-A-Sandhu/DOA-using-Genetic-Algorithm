function [ x ] = calc( C,L )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
m=length(C); % length of chromosome
x=[];
TH=pi/180;
for k=1:L
    a=0;
    fd=1;
    for j=1:2:m
       a(1,fd)=C(j)*exp(i*(k-1)*pi*cos(C(j+1)*TH));
    fd=fd+1;
    end

    x(k)=sum(a);
end

end

