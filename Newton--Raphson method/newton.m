%Newton--Raphson method
%For the birthday problem function
%F. I. Giasemis

format short;
format compact;

syms x; 
syms f(x);
f(x) = (365 - x) * log(365) - (365 - x) * log(365-x) - x - log(1 - 0.5);
f_pr(x) = diff(f(x));
x_0 = input('Initial guess for solution: x_0=');
n = input('Number of steps: n=');
x = zeros(1,n+1);
x(1) = x_0;

for i = 1:n
    number_steps = i;
    x(i + 1) = x(i) - f(x(i)) / f_pr(x(i));
    best_est = x(i + 1);
    if abs(x(i + 1) - x(i)) < 1e-20
        break
    end
end
best_est
format short;
number_steps