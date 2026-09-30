% Q3: Runge-Kutta 4 (FOR loop)  dy/dx = sin(3x) - 2y, y(0) = 1, h = 0.2, 0<=x<=2.4
clear; clc;
f = @(x,y) sin(3*x) - 2*y;
x0 = 0;  y0 = 1;  h = 0.2;  xend = 2.4;
steps = round((xend - x0)/h);
x = x0;  y = y0;
fprintf('%2d %4.1f %10.6f\n', 0, x, y);
for i = 1:steps
    k1 = h*f(x, y);
    k2 = h*f(x + h/2, y + k1/2);
    k3 = h*f(x + h/2, y + k2/2);
    k4 = h*f(x + h,   y + k3);
    y  = y + (k1 + 2*k2 + 2*k3 + k4)/6;
    x  = x0 + i*h;
    fprintf('%2d %4.1f %10.6f\n', i, x, y);
end
