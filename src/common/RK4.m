function [T, Y] = RK4(f, a, b, y0, N, n)
    T = zeros(N + 1, 1);
    Y = zeros(N + 1, n);

    t = a;
    y = y0;
    h = (b - a) / N;

    T(1) = t;
    Y(1,:) = y;
    for i = 1 : N
        k1 = f(t, y);
        k2 = f(t + h / 3, y + k1 * h / 3);
        k3 = f(t + 2 * h / 3, y - k1 * h / 3 + k2 * h);
        k4 = f(t + h, y + h * k1 - h * k2 + h * k3);

        y = y + h * (k1 + 3*k2 + 3*k3 + k4) / 8;

        Y(i + 1,:) = y;
        t = t + h;
        T(i + 1) = t;
    end
end

