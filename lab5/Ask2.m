function Ask2
  %ask2.1
  wo = 0.07*pi;
  r = 1
  num=[1 ,-r*cos(wo)];
  den=[1 ,-2*r*cos(wo) ,r*r ];
  
  figure(1);
  subplot(2,1,1);
  zplane(roots(num),roots(den));
  title("poloi k midenika");
  hold on;
  n = [0:128];
  delta = zeros(1,length(n));
  delta(1,n==0) = 1;
  
  subplot(2,1,2);
  Hn = filter(num,den,delta);
  stem(Hn);
  title("krousi");
  xlabel("xronos");
  ylabel("h(n)");
  saveas(gcf, "ask2a.jpg");
  
  %ask2.b
  r2=0.98;
  num2=[1 ,-r2*cos(wo)];
  den2=[1 ,-2*r2*cos(wo) ,r2*r2 ];
  
  figure('Name', "ask2b");
  subplot(2,1,1);
  zplane(roots(num2),roots(den2));
  title("poloi k midenika");
  n2 = [0:128];
  delta2 = zeros(1,length(n2));
  delta2(1,n==0) = 1;
  Hn2 = filter(num2,den2,delta2);   
  subplot(2,1,2);
  stem(Hn2);
  title("Hn");
  xlabel("xronos");
  ylabel("h(n)");
  saveas(gcf, "ask2b.jpg");
endfunction
