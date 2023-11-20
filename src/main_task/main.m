clear;
clc;
    
a = 0;
b = 100;
N = (b - a) * 1000;
n = 4;
v0 = 60;

theta = 20:70;

for i = 1:length(theta)
    alpha = pi * theta(i) / 180;

    % [x, y, v, theta]
    y0 = [0, 0, v0, alpha];
    
    [T, Y] = RK4(@func, a, b, y0, N, n);
    
    disp(theta(i));
    disp(max(Y(:, 1)));

    hold on
        plot(T, Y(:, 4));
    hold off
end


xlabel('t, с');
ylabel('\theta, радианы');
title('Зависимость угла наклона от времени для разных начальных углов');






