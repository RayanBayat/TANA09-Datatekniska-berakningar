function [x, y] = addToVectors(Points)

for i = 1:length(Points)
    x = [Points(i,1)];
    y = [Points(i,2)];
end
end