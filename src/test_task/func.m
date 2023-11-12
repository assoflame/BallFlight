function [dy] = func(t, y)
    dy = zeros(1, 2);
    dy(1) = y(2);
    dy(2) = 2*y(1)^2 * (4*t^2*y(1) - 1);
end

