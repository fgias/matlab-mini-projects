%Random number generator
%Fotios Ioannis Giasemis

clear all, clc
c=3;
N=input('Give number N:');
a=input('Give number a:');
for i=1:100;
    R(1,i)=c*mod(N,a);
    a=R(1,i);
end
plot(R)