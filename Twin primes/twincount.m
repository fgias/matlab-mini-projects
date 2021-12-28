%Twin Primes
%F. I. Giasemis

clc
disp('Prime Numbers between 0 and N')

N=input('Give number: N=');
n=0;
A=zeros(1,N);

format compact

for j=2:N;
    for i=2:sqrt(j);
        if mod(j,i)==0
            A(1,j)=1;
            break
        end
    end
    
    if A(1,j)==0
        n=n+1;
        pr(1,n)=j;
        
    end
end

n;

format loose
Ntwins=0;
for i=1:n-1
    if pr(1,i+1)-pr(1,i)==2;
       Ntwins=Ntwins+1;
    end
end
display('The number of twin primes up to N is')
Ntwins
    
    
    
    
    
    
    
