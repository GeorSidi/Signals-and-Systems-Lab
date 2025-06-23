function lab1

%AM A meros
%%%%%%% i)
fs=10000;
Ts=1/fs;
t=[0:Ts:2];
mt=cos(2*pi*t);
%printing
figure('Name','i');
plot(t,mt);
xlabel('t');
ylabel('m(t)');
title("deigma m(t)");
saveas(gcf,'1i.jpg');

%%%%%%% ii)
Ac=2;
fc=500;
%gnorizo oti x(t)=[Ac+m(t)]cos(2pi fc t) apa exo:
xt=(Ac+mt).*cos(2*pi*fc*t);
%printing
figure('Name','ii');
plot(t,xt);
xlabel('t');
ylabel('x(t)');
title("diamorfomeno kata AM x(t)");
saveas(gcf,'1ii.jpg');

%%%%%%% iii)
env=abs(hilbert(xt));
figure('Name','iii');
plot(t,env);
xlabel('x(t)');
ylabel('env');
title("periballousa");
saveas(gcf,'1iii.jpg');

%%%%%%% iv)....
figure('Name','iiv');
subplot(211)
plot(t,xt,'g');
hold on;
subplot(212)
plot(t,env,"linewidth",3);
xlabel('x(t)');
ylabel('env');
title("env");
saveas(gcf,'1iva.jpg');
%allagi
d=env-mean(env);
title("sigkrisi me allagi");
figure('Name','iiv');
subplot(211)
plot(t,mt,'g');
hold on;
subplot(212)
plot(t,d,"linewidth",3);
xlabel('t');
ylabel('env');
saveas(gcf,'1ivb.jpg');

%%%%%%% v)oi sinartiseis allzoyn os eksis
Ac2=0.7;
xt2=(Ac2+mt).*cos(2*pi*fc*t);
env2=abs(hilbert(xt2));

%%gia ii printing
figure('Name','v_ii');
plot(t,xt2);
xlabel('t');
ylabel('x(t)');
title("diamorfomeno kata AM x(t) gia Ac=0.7");
saveas(gcf,'1v_ii.jpg');

%gia iii printing
figure('Name','iiii');
plot(t,env2);
xlabel('x(t)');
ylabel('env');
title("periballousa");
saveas(gcf,'1v_iii.jpg');

%gia iv....
figure('Name','iiv');
title("sigkrisi sto v erotima");
subplot(211)
plot(t,xt2,'g');
hold on;
subplot(212)
plot(t,env2,"linewidth",3);
xlabel('x(t)');
ylabel('env2');
title("env2");
saveas(gcf,'1iva.jpg');
%allagi
d=env2-mean(env2);
title("sigkrisi me allagi sto v erotima");
figure('Name','iiv');
subplot(211)
plot(t,mt,'g');
hold on;
subplot(212)
plot(t,d,"linewidth",3);
xlabel('t');
ylabel('env2');
saveas(gcf,'1ivb.jpg');

%FM meros b
%%%%%%%askisi1
clear;

clear;
%%erotima B
Am=0.1;
T = 0.2;
fs = 8000;
Ts = 1/fs;
N = T/Ts;
t = [0:Ts:T];
n = [0:N];
%%i
scale=2*Am/T;
m=[];
for n=0:N/2-1
   m(n+1)=scale*n*Ts;
end
for n=N/2:N
   m(n+1)=Am-(n-N/2)*scale*Ts;
end
figure('Name','i');
plot(t,m);
xlabel('t');
ylabel('m');
title("2i");
saveas(gcf,'2_i.jpg');

%ii 
Ac=1;
Kf=2;
fc=100;
x = Ac*cos(2*pi*fc*t+(2*pi*Kf*cumsum(m)));
figure('Name','ii');
plot(t,x);
xlabel('t');
ylabel('x');
title("2i");
saveas(gcf,'2_ii.jpg');


%iii
y=diff(x)/Ts;
figure('Name','iii');
plot(y);
xlabel('t');
ylabel('x');
title("2iii");
saveas(gcf,'2_iii.jpg');

%iv
env3=abs(hilbert(y));
figure('Name','iv');
plot(env3);
xlabel('t');
ylabel('env');
title("2iv");
saveas(gcf,'2_iv.jpg');






endfunction

  