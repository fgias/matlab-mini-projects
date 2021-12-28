%Babylonian Method for the computation of roots
%Fotios Ioannis Giasemis

clc;
x=input('Give number: X=');
g=x-0.5;

for i=1:1000;
    if x/g<g;
        g=(x/g+g)/2;
        %pause(0.01);
        
    end
end

format long

disp('the root of X is:') 
disp(g)

format short

clear