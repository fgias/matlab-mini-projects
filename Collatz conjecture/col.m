%Collatz Conjecture
%Fotios Ioannis Giasemis

n(1)=input('n=');
for i=2:40;
    if mod(n(i-1),2)==0;
        n(i)=n(i-1)/2;
    else
        n(i)=3*n(i-1)+1;
    end
end
plot(n)
clear all;


