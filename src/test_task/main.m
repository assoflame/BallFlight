clear;
clc;

a = 0;
b = 5;
y0 = [1, 0];
n = 2;
N = 1000;

[T, Y] = RK4(@func, a, b, y0, N, n);
[t1, y1] = exactFunction(N, a, b, @(t) 1 / (1 + t^2));
[t2, y2] = exactFunction(N, a, b, @(t) -2*t / (1 + t^2)^2);


plot(t1, y1, T, Y(:,1));
title('Графики точного (y_1(t)) и приближенного решения при h = 5*10^{-3}');
xlabel('t');

