clear;
clc;

a = 0;
b = 5;
y0 = [1, 0];
n = 2;

minN = 100;
maxN = 5000;
step = 10;
count = length(minN:step:maxN);
H = zeros(1, count);
e1 = zeros(1, count);
e2 = zeros(1, count);
eh1 = zeros(1, count);
eh2 = zeros(1, count);

i = 1;
for N = minN:step:maxN
    h = (b - a) / N;
    [T, Y] = RK4(@func, a, b, y0, N, n);
    [t1, y1] = ExactFunction(N, a, b, @(t) 1 / (1 + t^2));
    [t2, y2] = ExactFunction(N, a, b, @(t) -2*t/(1 + t^2)^2);

    e1(i) = max(abs(Y(:,1) - y1));
    e2(i) = max(abs(Y(:,2) - y2));
    eh1(i) = e1(i) / h^4;
    eh2(i) = e2(i) / h^4;
    H(i) = h;
    
    i = i + 1;
end

hold on
    plot(H, e1);
hold off

hold on
    plot(H, e2);
hold off

xlabel('h');
ylabel('e');

// semilogx(H, eh1);
// title('Зависимость e/h^4 от log_{10}h для y_1(t)')
// xlabel('log_{10}h');

// semilogx(H, eh2);
// title('Зависимость e/h^4 от log_{10}h для y_2(t)')
// xlabel('log_{10}h');

