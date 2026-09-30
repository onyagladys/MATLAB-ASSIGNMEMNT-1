% Q2: Secant method (FOR loop)  f(x) = x - 2 sin(x),  x0 = 2, x1 = 1.9
clear; clc;
f = @(x) x - 2*sin(x);
x0 = 2;  x1 = 1.9;  tol = 0.0000005;  Nmax = 50;
for n = 1:Nmax
    N = f(x1)*(x1 - x0);
    D = f(x1) - f(x0);
    if D == 0
        break
    end
    x2  = x1 - N/D;
    err = abs(x2 - x1);
    fprintf('%2d %9.6f %9.6f %11.3e %11.3e %10.6f\n', n, x0, x1, N, D, err);
    x0 = x1;  x1 = x2;
    if err < tol
        break
    end
end
fprintf('Root = %.6f\n', x1);
