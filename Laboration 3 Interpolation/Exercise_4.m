 DisplayMap();
%  Points = [Points;AddPointsToMap];
% [Points]=AddPointsToMap(10);
x = Points(:, 1);
y = Points(:, 2);

[sx, sy] = ParametricCurve(x, y);

n = 10 * length(x);
tt = (0:n) / n;

plot(ppval(sx, tt), ppval(sy, tt), 'LineWidth', 2);
CalculateLength(sx,sy,10)
hold on;