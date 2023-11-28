clear;
clc;
    
a = 0;
b = 100;
N = (b - a) * 1000;
n = 4;
v0 = 60;

theta = 20:70;

for i = 1:length(theta)

    y0 = [0, 0, v0, pi * theta(i) / 180];
    
    [T, Y] = RK4(@func, a, b, y0, N, n);

    hold on
        plot(Y(:, 1), Y(:, 2));
    hold off
end


xlabel('X, м');
ylabel('Y, м');
title('Зависимость Y(X) для разных начальных углов');






