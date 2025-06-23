function ask1
  %1a
  k= -15:15;
  Xk= 1./(pi*k).*sin(pi*k/2);
  figure('Name','1a');
  subplot(211);grid;stem(0,1/2);
  hold on
  stem(k,abs(Xk));
  title('platos');
  xlabel('sixnotita');ylabel('manditude');
  subplot(212);stem(k,angle(Xk));
  grid;
  title('fasi');
  xlabel('sixnotita');ylabel('fasi');
  saveas(gcf,'1_a.jpg');
  hold off;
  refresh();
  
  %1b
  Dtt=0.01;
  tt= -3:Dtt:3;
  S=[3,5,9,31,50,500,1000];
  x = zeros(1, length(tt));
  figure('Name','1b-proseggiseis');
  for i = S
    for l = 1:i
        x = x + 1/(pi*l)*sin(pi*l/2)*exp(j*l*pi*tt);
      endfor
      switch (i)
        case 3
          x=x + 1/2;
          subplot(421);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('xronos (s)');
          ylabel('x(t)');
          title('k==3');
        case 5
          x=x+ 1/2;
          subplot(422);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('xronos (s)');
          ylabel('x(t)');
          title('k==5');
       case 9
          x = x + 1/2;
          subplot(423);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('xronos (s)');
          ylabel('x(t)');
          title('k==9');
       case 31
          x = x + 1/2;
          subplot(424);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('Time (s)');
          ylabel('x(t)');
          title('k==31');
       case 50
          x = x + 1/2;
          subplot(4,2,5);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('xronos (s)');
          ylabel('x(t)');
          title('k==50');
       case 500
          x = x + 1/2;
          subplot(426);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('xronos (s)');
          ylabel('x(t)');
          title('k==50');
       case 1000
          x = x + 1/2;
          subplot(427);
          plot(tt,x); grid;
          x = zeros(1, length(tt));
          xlabel('xronos (s)');
          ylabel('x(t)');
          title('k==1000');
       endswitch                                             
                             
    endfor
    saveas(gcf,'ask1_b.jpg'); 
    printf('mesi isxis')
    
    A=1;
    s= -15:15;
    Xs= (1./(pi*s));
    P= sum(abs(Xs));
    P
    
endfunction
