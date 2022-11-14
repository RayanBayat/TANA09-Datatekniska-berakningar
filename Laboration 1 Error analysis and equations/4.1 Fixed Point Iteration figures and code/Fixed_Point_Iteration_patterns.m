clear;
clc;

%# You function here
g=@(x) cos(x)^2;
%g=@(x) acos(sqrt(x));

%# Start out iteration loop
x1 = 1;
x2 = g(x1);

iterations = 0;% # iteration counter

ezplot(g,[0,1]);
hold on 
ezplot('x',[[0,1]])

while (abs(x2-x1) > 1e-5 && iterations<100)
    plot([x1 x1], [x1 x2], 'k-')
    plot([x1 x2], [x2 x2], 'k--')
     %pause
    iterations = iterations + 1;
    x1 = x2;
    x2 = g(x1);
end
iterations 
[x1 x2]