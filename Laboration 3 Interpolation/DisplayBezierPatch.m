

function[]=DisplayBezierPatch(N,p1,p2,p3,p4)
  % Extract the vector from the input arguments
  t = (0:N)'/ N;  
  ptx = (1-t).^3*p1(1)+3*(1-t).^2.*t.*p2(1)+3*(1-t).*t.^2.*p3(1)+t.^3.*p4(1);
  pty = (1-t).^3*p1(2)+3*(1-t).^2.*t.*p2(2)+3*(1-t).*t.^2.*p3(2)+t.^3.*p4(2);

  plot(ptx,pty);
%   ppval(pt, t)
%   pt = (1-t)^3*points[1]+3(1-t)^2*t*points[2]+3*(1-t)*t^2*points[3]+t^3*points[4]
end