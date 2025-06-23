function ask2
% 1.a 
  t= 0:0.01:3*pi/2;
  x=sin(1.8*pi*t);
  figure('Name','a1');
  plot(t,x);
  xlabel('t');
  ylabel('x(t)');
  saveas(gcf,'2a.jpg');
% 1.b  
  n= 0:45;
  y=cos(1.7*pi*n/10);
  figure('Name','a2');
  stem(n,y);
  xlabel('n');
  ylabel('y(n)');
  saveas(gcf,'2b.jpg');
% 1.c
  pkg load symbolic;
  syms t;
  subplot(3,1,1);
  ezplot(t,(e^(-t))*heaviside(t));
  axis([-4 4 0 1]);
  ylabel('x(t)');
  
  subplot(3,1,2);
  b=t-1;
  ezplot(t,(e^(-b))*heaviside(b));
  axis([-4 4 0 1]);
  ylabel('x(t)');
  
  c=t+1;
  subplot(3,1,3);
  ezplot(t,(e^(-c))*heaviside(c));
  axis([-4 4 0 1]);
  xlabel('t');
  ylabel('x(t)');
  saveas(gcf,'2c.jpg');
  
  
endfunction