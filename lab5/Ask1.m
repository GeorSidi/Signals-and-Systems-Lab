function Ask1
  %ask1.a
  num=[1 , 1.5];
  den=[1 , 0.2, 1];

  figure(1);
  zplane(num,den);
  title("poloi k midenika");
  saveas(gcf, "ask_1a.jpg");
  
  %ask1.b
  n1 = 0:9;
  [R,p] = residuez(num,den);
  hn = R(1)*(p(1).^n1)+ R(2)*(p(2).^n1);
  
  figure(2);
  stem(hn);
  title("anaptiji se apla klasmata");
  xlabel("n");
  ylabel("h(n)");
  saveas(gcf,"ask1_b.jpg");
  
  %ask1.c
  n = [0:9];
  delta = zeros(1,length(n));
  delta(1,n==0) = 1;
  
  figure(3);
  stem(filter(num,den,delta));
  title("epali8eysi");
  xlabel("n");
  ylabel("h(n)");
  saveas(gcf,"ask1_c.jpg");
endfunction
