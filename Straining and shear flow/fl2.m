%Flow 2
%Visualisation
%See B1, problem set 1, q1, ?
%F. I. Giasemis

syms x y


for t=0:.02:1;
    fimplicit((x-t*y)^2+y^2==1,[-2 2 -2 2])
    pause(.001)
end