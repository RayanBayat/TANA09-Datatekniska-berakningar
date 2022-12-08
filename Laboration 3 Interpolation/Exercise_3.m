t=[0 2 4 5 6];
y=[0 0 1 0 0];
pn=csape(t,y,"variational");
pr=csape(t,y,"complete",[0,0]);
tt=0:0.01:6;
yy=fnval(pn,tt);
hold on;
% 3.1
plot(t,y,"r*");
plot(tt,yy);
% 3.2
yy=fnval(pr,tt);
hold on;
plot(tt,yy);

