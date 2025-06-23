function ask4
%4a 
  pkg load symbolic;
  t=0:1;
  a=t-1;
  x=heaviside(a)-heaviside(t);
  h=heaviside(a)-heaviside(t);
  figure('Name','4a1');
  plot(x);
  saveas(gcf,'4a1.jpg');
  xlabel('t');
  ylabel('x(t)');
  y=conv(x,h);
  figure('Name','4a2');
  plot(0:1:2 ,y);
  saveas(gcf,'4a2.jpg');
  xlabel('t');
  ylabel('y(t)');
%4b
  z=conv(y,h);
  figure('Name','4b');
  plot(0:1:3,z);
  saveas(gcf,'4b.jpg');
  xlabel('t');
  ylabel('z(t)');
%4c
  w=conv(z,h);
  figure('Name','4c');
  plot(0:1:4,w);
  saveas(gcf,'4c.jpg');
  xlabel('t');
  ylabel('w(t)');
endfunction

  