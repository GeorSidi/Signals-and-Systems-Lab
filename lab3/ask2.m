function ask2
  %2.1
  
  t=0:0.0001:1;
  n=0:50;
  Ts=0.02;
  Tss=0.3;
  
  xt=2*cos(8*pi*t)-sin(12*pi*t);
  xn=2*cos(8*pi*n*Ts)-sin(12*pi*n*Ts);
  
    
  subplot(2,1,1);
  hold on;xlabel('Time(s)');
  plot(t,xt,'r');grid;
  ylabel('xt');
  title('T=0.02');
  
  xn=2*cos(8*pi*n*Ts)-sin(12*pi*n*Ts);  
  subplot(2,1,2);
  hold on;xlabel('Time(s)');
  plot(n,xn,'r');grid;
  ylabel('xn');
  saveas(gcf,'ask2_a.jpg');
  refresh();
  
  
  %2.2
  subplot(2,1,1);
  hold on;xlabel('Time(s)');
  plot(t,xt,'r');grid;
  ylabel('xt');
  title('T=0.02');
  
  xn=2*cos(8*pi*n*Tss)-sin(12*pi*n*Tss);  
  subplot(2,1,2);
  hold on;xlabel('Time(s)');
  plot(n,xn,'r');grid;
  ylabel('xn');
  saveas(gcf,'ask2_b.jpg');
  
  
endfunction
