% Q1: Newton-Raphson (WHILE loop)  f(x) = 1 - 3x + 0.5*x*e^x
clear; clc;
f  = @(x) 1 - 3*x + 0.5*x.*exp(x);
df = @(x) 0.5*(1 + x).*exp(x) - 3;
tol = 0.000005;  Nmax = 50;
starts = [0.5, 1.6];
for s = 1:numel(starts)
    x = starts(s);  n = 0;  err = 1;
    fprintf('x0 = %.1f\n', x);
    fprintf('%2d %10.6f\n', 0, x);
    while err > tol && n < Nmax
        x_new = x - f(x)/df(x);
        err   = abs(x_new - x);
        x     = x_new;
        n     = n + 1;
        fprintf('%2d %10.6f %10.6f\n', n, x, err);
    end
    fprintf('Root = %.5f\n\n', x);
end
