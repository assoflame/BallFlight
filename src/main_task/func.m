function [dy] = func(t, y)
    m = 45; C = 0.25; p = 1.29; S = 0.35; g = 9.81;

    dy = zeros(1, 4);

    dy(1) = y(3) * cos(y(4));
    dy(2) = y(3) * sin(y(4));
    dy(3) = -(C*p*S*(y(3)^2))/(2*m) - g*sin(y(4));
    dy(4) = -(g * cos(y(4)))/y(3);
end
