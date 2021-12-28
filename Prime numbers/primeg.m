%Prime Numbers
%Graph
%Fotios Ioannis Giasemis
clc
disp('Prime Numbers between 0 and N')

N=input('Give number: N=');
n=0;
A=zeros(1,N);
X=1:N;

format compact

for j=2:N;
    
    for i=2:sqrt(j);
        
        if mod(j,i)==0
            A(1,j)=1;
            break
        end
    end
   
end

scatter(X,A)

format loose
clear all;
clc;
    
    
