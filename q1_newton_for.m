% Q1: Newton-Raphson (FOR loop)  f(x) = 1 - 3x + 0.5*x*e^x
clear; clc;
f  = @(x) 1 - 3*x + 0.5*x.*exp(x);
df = @(x) 0.5*(1 + x).*exp(x) - 3;
tol = 0.000005;  Nmax = 50;
starts = [0.5, 1.6];
for s = 1:numel(starts)
    x = starts(s);
    fprintf('x0 = %.1f\n', x);
    fprintf('%2d %10.6f\n', 0, x);
    for n = 1:Nmax
        x_new = x - f(x)/df(x);
        err   = abs(x_new - x);
        fprintf('%2d %10.6f %10.6f\n', n, x_new, err);
        x = x_new;
        if err <= tol
            break
        end
    end
    fprintf('Root = %.5f\n\n', x);
end
