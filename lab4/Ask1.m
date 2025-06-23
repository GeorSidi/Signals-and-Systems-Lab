function ask1
  
  %1a
  n=0:40;
  N=4;
  
  xn = zeros(1,40);
  yn = zeros(1,40);
  sn = zeros(1,40);
  en= 0.4 * randn([1,40]);
  
  for i=1:length(n)-1
    sn(i)=2*cos(pi*i/4);
    xn(i)=sn(i)+ en(i);
  end
  
  figure(1);
  subplot(411);
  hold on;xlabel('times eisodon (n)');
  stem(sn);grid;
  xlabel("n");ylabel("s(n)");
  ylim([-2 2]);
  title('ka8aro sima s(n)');
  
  subplot(412);
  hold on;xlabel('times eisodon (n)');
  stem(en);grid;
  xlabel("n");ylabel("e(n)");
  ylim([-2 2]);
  title('sima 8oriboy e(n)');
  
  subplot(413);
  hold on;xlabel('times eisodon (n)');
  stem(xn);grid;
  xlabel("n");ylabel("x(n)");
  ylim([-2 2]);
  title('diabromeno apo 8oribo sima x(n)');
  
  for n=1:40
    for k=0:(N-1)
      if(n>k)
        yn(n)+=(1/N)*xn(n-k);
      end
    end 
  end
    
  subplot(414);
  xlabel('times eisodon (n)');
  stem(yn);grid;
  xlabel("n");ylabel("y(n)");
  ylim([-2 2]);
  title('filtro Y(n) (N=4)');
  refresh();
  saveas(gcf,"ask1a.jpg");
  
  %1b
  Nn=11;
  w = (-3*pi):0.1:(3*pi);
  H = (sin((w*Nn)/2)./sin(w/2).*exp((-j*w*(Nn-1))/2));
      
  figure(2);
  subplot(411);
  plot(w,abs(H)); grid;
  xlim([-pi pi]);
  xlabel("w");
  ylabel("abs(H)");
  title("Metro H sto[-pi pi]");
  
  subplot(412);
  plot(w,angle(H)); grid;
  xlim([-pi pi]);
  xlabel("w");
  ylabel("angle(H)");
  title("fasi H sto [-pi pi]");
  
  subplot(413);
  plot(w,abs(H)); grid;
  xlim([-3*pi 3*pi]);
  xlabel("w");
  ylabel("abs(H)");
  title("Metro H sto [-3pi 3pi]");
  refresh();
  
  subplot(414);
  plot(w,angle(H)); grid;
  xlim([-3*pi 3*pi]);
  xlabel("w");
  ylabel("angle(H)");
  title("fasi H sto [-3pi 3pi]");
  refresh();
  
  saveas(gcf,"ask1bii.jpg");
  
  
endfunction
