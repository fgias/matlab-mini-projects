%The Mandelbrot Set
%F. I. Giasemis

%z_n+1 = z_n^2 + c
%z_n critical = 0, for Mandelbrot

for a = -2:.05:2
    a
    for b = -2:.05:2
        z_n=0;
        c = a+b*j;
        for i=1:10
            z_n = z_n^2 + c;
        end
        if (real(z_n))^2+(imag(z_n))^2 < 10^10
            plot(a, b, '*k')
            hold on
        end
    end
end
