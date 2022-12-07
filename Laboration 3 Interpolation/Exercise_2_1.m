xvalue = 1.3;
tk=[1 1.5 2];
ftk=[1.6602 1.7383 1.5796];

% t = [0:0.01:10];
% C0 = exp(-1/5)+sin(1);

% 
% fplot(functionf)
% hold on;
p1 = polyfit( tk(1:2),ftk(1:2), 1);
p2 = polyfit( tk(1:3),ftk(1:3), 2);


x=[0 0.5 0.7];  
y=[ 1.005 0.857 0.881 ];
% p1 = polyfit( x(1:2) , y(1:2) , 1 )
% p2 = polyfit( x(1:3) , y(1:3) , 2 )
xx=-0.1:0.01:2.2; 
y1=polyval(p1,xx); 
plot(xx,y1);
hold on;
y2=polyval(p2,xx); 
plot(xx,y2);

% trancation error
C0 = exp(-1/5)+sin(1);
C1 = ( ftk(1) - C0)/(tk(1)-1);
C2 = (ftk(2) - C0 - C1*(tk(1)-1))/((tk(2)-1)*(2-1.5));
 
C = [C0 C1 C2];
Rt = -0.4736*(xvalue-1)*(xvalue-1.5) %  0.0284

f0_bar_minus_f0 = exp(-1/5)+sin(1)-1.6602
f1_bar_minus_f1 = exp(-1.5/5)+sin(1.5)-1.7383

u=(xvalue-1)/(1.5-1);
Rxf = (1-u)*f0_bar_minus_f0+u*f1_bar_minus_f1; % 8.6195e-06