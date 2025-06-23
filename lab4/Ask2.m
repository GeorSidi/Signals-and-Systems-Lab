function Ask2
%2a
  x = [6, 5, 4, 4, 4, 4, 10, 10, 10, 8, 8, 7, 6, 0];
  y = zeros(1,14);
  y(1) = 0;
  
  for n=2:14
    y(n) = x(n)-x(n-1);
  end
  
  figure(1);
  subplot(2,1,1);
  stem(x);
  xlabel("n");
  ylabel("x(n)");
  title("sima x[n]");
      
  subplot(2,1,2);
  stem(y);
  xlabel("n");
  ylabel("y(n)");
  title("filtro y[n]");
  saveas(gcf,"ask2a.jpg");

%2b
  w = -1000:0.1:1000;
  H=1-cos(w)+j*sin(w);
  
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
  
  saveas(gcf,"ask2b.jpg");
%2c
  X = imread('peppers.png');
  figure; imshow(X);
  X = double(rgb2gray(X));
  figure; imshow(X,[]);  
  [R C]=size(X);
  
  Y = zeros(R,C);
  Z = zeros(R,C);
  G = zeros(R,C);
  
  for i=2:R
  Y(i,1)=0;
    for j=2:C
      Y(i,j) = X(i,j)-X(i-1,j);
    end 
  end
  
  for i=2:C
    Z(1,i)=0;
     for j=2:R
      Z(j,i)= X(j,i)-X(j,i-1);
     end
  end
  
  for i=2:R
    for j=1:C
      G(i,j)=sqrt(Y(i,j)^2 + Z(i,j)^2);
    end
  end
  
  figure(5);imshow(X,[]);
  title("aspromayro pepers");
  saveas(gcf,"ask2c.jpg");
  figure(6);imshow(Y,[]);
  title("Y");
  saveas(gcf,"ask2cii.jpg");
  figure(7);imshow(Z,[]);
  title("Z");
  saveas(gcf,"ask2ciii.jpg");
  figure(8);imshow(G,[]);
  title("G");
  saveas(gcf,"ask2civ.jpg");
  
  
endfunction
