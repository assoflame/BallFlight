# Решение системы дифференциальных уравнений для полета снаряда методом Рунге-Кутты 4-го порядка точности #

## Постановка задачи ##

Рассмотрим полет снаряда, выпущенного под углом к горизонту, при следующих предположениях:

- Сила сопротивления воздуха пропорциональна квадрату скорости снаряда;

- Дальность полета не превышает 10 км;

- Боковой ветер отсутствует.

Уравнения движения центра масс снаряда в проекциях на оси координат:<br />

$$x'' = -C\rho Sv^2\cos(\theta)/2m$$
$$y'' = -C\rho Sv^2\sin(\theta)/2m - g$$

Здесь $m$ - масса снаряда, $v$ - скорость движения, &theta; - угол между касательной к траектории и осью $Ox$, $g$ - ускорение свободного падения, $S$ - площадь поперечного сечения снаряда, &rho; - плотность воздуха, $C$ - коэффициент лобового сопротивления снаряда.

## Преобразование уравнений ##

Для численного решения удобно преобразовать два уравнения второго порядка к четырем уравнениям первого:<br />
![](docs/images/task/second_system.jpg)

## Метод Рунге-Кутты 4 порядка ##

![](docs/images/task/RK4.jpg)

## Тестирование метода ##

Необходимо проверить метод на следующей системе уравнений на отрезке [0;5]:<br />
![](docs/images/task/test_task.jpg)

Данная система имеет следующее точное решение:<br />

![](docs/images/task/test_task_exact_funcs.jpg)

Получившиеся графики точного и приближенного решений:<br />
![](docs/images/test_task/y_1.jpg)
![](docs/images/test_task/y_2.jpg)

Графики зависимости максимальной погрешности решения $e$ от $h$ и $e/h^4$ от $log_{10}(h)$ ($h$ - шаг).<br />

![](docs/images/check/eh_y1.jpg)
![](docs/images/check/eh4_y1.jpg)
![](docs/images/check/eh_y2.jpg)
![](docs/images/check/eh4_y2.jpg)


## Решение основной задачи  ##

### Силы, действующие на снаряд ###

![](docs/images/forces.jpg)

### Начальные условия ###

![](docs/images/task/begin_conditions.jpg)

### Параметры  ###

![](docs/images/task/params.jpg)

### Получившиеся графики ###

![](docs/images/main_task/y_x.jpg)
![](docs/images/main_task/v.jpg)
![](docs/images/main_task/L_angle.jpg)
![](docs/images/main_task/angle.jpg)

Максимальная длина полета достигается при начальном угле 35 градусов.
