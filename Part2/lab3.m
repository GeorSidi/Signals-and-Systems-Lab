function lab3
pkg load communications;
close all;
clear all;

SNR_db=5;
SNR =10^ (0.1 * SNR_db);
Es=1;
Eb = Es/2;
N0 = 1/SNR;
sigma2=N0/2;


s1=sqrt(2*Es)/2+j*sqrt(2*Es)/2;
s2=-sqrt(2*Es)/2+j*sqrt(2*Es)/2;
s3=-sqrt(2*Es)/2-j*sqrt(2*Es)/2;
s4=sqrt(2*Es)/2-j*sqrt(2*Es)/2;

figure;
plot(s1,'*b');
hold on;
plot(s2,'*b');
hold on;
plot(s3,'*b');
hold on;
plot(s4,'*b');
line([0 0],[-2 2]) %y=axis
line([-2 2],[0 0]) %x=axis

%%erotima 2.
N=1000;
error_counter = 0;
for i=1:N
  originalsymbol = randi(4);
  if(originalsymbol==1)
      s = s1;
  elseif(originalsymbol==2)
    s = s2;
  elseif(originalsymbol==3)
    s = s3;
  else
    s = s4;
  endif
  %disp([originalsymbol, s]);
%noise
  n=rand*sqrt(sigma2)+j*randn*sqrt(sigma2);
%received symbol
  r=s+n;
%MLD
  if real(r)>=0 && imag(r)>0
    receivedsymbol = 1;
  elseif real(r)<=0 && imag(r)>0
    receivedsymbol = 2;
  elseif real(r)<0 && imag(r)<=0   
    receivedsymbol = 3;
  else
    receivedsymbol = 4;
  endif
%erro check
  if receivedsymbol~=originalsymbol
    error_counter++;
   endif
   %disp([originalsymbol , receivedsymbol]);
endfor
disp('Number of errors: ');
disp(error_counter);

SER=error_counter/N;
disp('Symbol error rate (SER): ');
disp(SER);

if receivedsymbol == 1
  rs =s1;
elseif receivedsymbol == 2
  rs = s2;
elseif receivedsymbol == 3
  rs = s3;
else
  rs = s4;
end

figure;
plot(s, '*');
hold on;
plot(r,'+r');
hold on;
plot(rs,'og');
line([0 0],[-2 2]) %y=axis
line([-2 2],[0 0]) %x=axis
axis square;

%erotima 1
theoretical_SER = 2*qfunc(sqrt(2*Eb/N0)) -(qfunc(sqrt(2*Eb/N0)))^2;
disp("Theoretical symbol rate (SER)")
disp(theoretical_SER);


endfunction
