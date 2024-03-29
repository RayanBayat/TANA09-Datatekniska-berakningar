function []=DrawFont()

N=1000;
%
% Create a vector of points to use for defining straight line segments.
%
 Points=[70 23 23 23  23  23  23    0   0  46 46 70 
          4  0 20 35 107 125 195  213 222 225 28 13]
%
% Create a matrix that can be used to store the control points for the 
% Bezi'er curves. In the exercise you will successively add more points
% into this matrix.
%
 Control=[23   23  10  0   23 20 -10 -15  -20  -40 -40  -40  0  23
          195 213 213 213  20 0  0   0     0    20   70  120 170 125]



%
% Code that can be used to cerate an "italic style" d.
% 
if 0,
 L=[1,0.07;0 1];  , Points=L*Points; Control=L*Control;
end;

%
% Set up a new figure window and draw line segments.
%
 clf,hold on,axis([-70 80 -10 250])
 plot(Points(1,[12,1:3]),Points(2,[12,1:3]),'k')
 plot(Points(1,4:5),Points(2,4:5),'k')
 plot(Points(1,6:7),Points(2,6:7),'k')
 plot(Points(1,8:11),Points(2,8:11),'k')


 x1 = -60;
x2 = 80;
y = 0;

% Create the line object
line([x1, x2], [y, y]);


%
% Here you should set up control points for curve segment A and draw
% the curve using your Bezier spline function. The curve should start at  
% point P1 and end at point P2
%
% Add the new control points into the matrix Control above. And access
% them in the same was we access coordinates from the Points matrix, e.g.  
%
 C1=Control(:,1);
  C2=Control(:,2);
    C3=Control(:,3);
  C4=Control(:,4);

DisplayBezierPatch(N,C1,C2,C3,C4);


 C5=Control(:,5);
  C6=Control(:,6);
    C7=Control(:,7);
  C8=Control(:,8);

DisplayBezierPatch(N,C5,C6,C7,C8);
 C9=Control(:,9);
  C10=Control(:,10);
    C11=Control(:,11);


DisplayBezierPatch(N,C8,C9,C10,C11);

 C12=Control(:,12);
  C13=Control(:,13);
    C14=Control(:,14);


DisplayBezierPatch(N,C11,C12,C13,C14);

% 
% where column 1 of the Control matrix holds the coordinates for control
% point C1.
%
 P1=Points(:,7);,P2=Points(:,8);
 
%
% Here you should set up control points for curve segment B and draw
% the curve. (This part of the exercise is optional)
%
 P1=Points(:,11);,P2=Points(:,12);
 
%
% Here you should set up multiple interpolation points and control points
% corresponding to the outer arc. The curve starts at P1 and ends at P4. 
% We need two additional interpolation points P2 and P3 where the curve 
% touches the line y=0 and the line x=A, where A is picked so that the 
% curve looks ok.
%
 P1=Points(:,3);P4=Points(:,6);
 
%
% Set up the control points needed to draw the inner arc. Now it is enough 
% to use one additional interpolation point to determine where the curve 
% should tangent the line x=B. It is required that B>A or the inner arc
% will cross the outer one. 
%
 P1=Points(:,4);P3=Points(:,5);
 