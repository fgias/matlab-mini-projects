%Flow
%Visualisation
%See B1, problem set 1, q1, ?
%F. I. Giasemis

syms x y


for t=0:.01:0.5;
    fimplicit((x*exp(-t))^2+(y*exp(t))^2==1,[-2 2 -2 2])
    pause(.001)
  
end


