clear;
clc;
    
a = 0;
b = 1000;
N = (b - a) * 10;
n = 4;
v0 = 60;

theta = 20:5:70;

for i = 1:length(theta)
    alpha = pi * theta(i) / 180;

    % [x, y, v, theta]
    y0 = [0, 0, v0, alpha];
    
    [T, Y] = RK4(@func, a, b, y0, N, n);
    
    hold on
        plot(Y(:, 1), Y(:, 2));
    hold off
end

legend('20^o', '25^o', '30^o', '35^o', '40^o', '45^o', '50^o', '55^o', '60^o', '65^o', '70^o');
xlabel('X');
ylabel('Y')
title('Y(X) для разных начальных углов');
