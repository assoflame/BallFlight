function [t, y] = exactFunction(N, a, b, func)
    t = zeros(N + 1, 1);
    y = zeros(N + 1, 1);
    h = (b - a) / N;
    
    i = 1;
    for x = a:h:b
        t(i) = x;
        y(i) = func(x);

        i = i + 1;
    end
end

