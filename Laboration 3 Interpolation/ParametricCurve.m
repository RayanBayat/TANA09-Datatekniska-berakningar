
function [sx, sy] = ParametricCurve(x, y)
    % create the parametric spline curve s(t)
    sp = csaps(x, y)

    % create a vector of t values to evaluate the spline curve at
    n = 10 * length(x);
    tt = (0:n) / n;

    % compute the x and y components of the spline curve
    sx = fnval(sp, tt);
    sy = fnval(sp, tt);

    % plot the spline curve
    figure;
    plot(tt, sy);
    xlabel('sx');
    ylabel('sy');
    title('Parametric Spline Curve');
end
% function [ sx , sy ] = ParametricCurve( x , y )
% %PARAMETRICCURVE Computes a parametric spline curve that interpolates the points (xk, yk)^T
% %   The function takes two vectors x and y as input, which contain the x and y coordinates
% %   of the points to be interpolated. It returns two vectors sx and sy, which contain the
% %   x and y coordinates of the points on the spline curve.
% 
% % Check that the input vectors have the same length
% if length(x) ~= length(y)
%     error('The input vectors x and y must have the same length')
% end
% 
% % Compute the spline curve using the built-in MATLAB function 'spline'
% sx = csaps(x, y);
% 
% % Evaluate the spline curve at a set of points
% %t = 0:0.01:1;
% % linspace(min(x), max(x), length(x))
% n=10*length(x);
% tt=(0:n)/n;
% sy = ppval(sx, tt);
% plot(tt,sy)
% end