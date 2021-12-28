%Simple Prime Number Investigator
%Is X a prime number?
%Fotios Ioannis Giasemis

X=input('Give number: X=');

N=sqrt(X);

A=0;

for i=2:N;
    if mod(X,i)==0
        A=1;
        break
    end
end

if A==1
    display('Not a prime number.')
else
    display('Prime Number.')
end

clear all;
