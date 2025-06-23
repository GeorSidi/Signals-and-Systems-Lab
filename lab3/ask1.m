function ask1
  pkg load symbolic;
  syms f;
  fo=3;
  Wo=6*fo;
  W=2*pi*f;
  H = heaviside(f+fo)-heaviside(f-fo);
  ht=simplify(ifourier(H));
  
  ezplot(ht);
  xlabel('t');
  ylabel('z(t)');grid;
  axis([-3 3 -2 8]);
  saveas(gcf,'ask1_a.jpg');
  
 %1.2
  syms xt;
  syms x1;
  syms x2;
  syms t;
  
  x1=sin(3*pi*t);
  x2=cos(16*pi*t);
  xt=x1+x2;
  
  Xx = fourier(xt);
  
  Y = H.*Xx;
  g = ifourier(Y);
  
  
  subplot(4,1,1);
  ezplot(t,xt); grid;
  title('xt');
  xlabel('t');
  ylabel('x');

  subplot(4,1,2);
  ezplot(t,x1); grid;
  title('x1');
  xlabel('t');
  ylabel('x');

  subplot(4,1,3);
  ezplot(t,x2); grid;
  title('x2');
  xlabel('t');
  ylabel('x');

  subplot(4,1,4);
  ezplot(g); grid;
  title('Yw');
  xlabel('t');
  ylabel('Y');
   
 saveas(gcf,'ask1_b.jpg');
    
  
endfunction
