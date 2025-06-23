function ask1
a=5;
b=2.3;
c=a + j*b;

d=a+b;
f=(a+b)/c;
g=(a^2 + 2*b +c)/1+3*b;

fprintf('d = %d\n',d);
fprintf('f = %d\n',f);
fprintf('g = %d\n',g);

fprintf('real of g = %d\n',real(g));
fprintf('imag of g = %d\n',imag(g));

fprintf('abs of g = %d\n',abs(g));
fprintf('angle of g = %d\n',angle(g));
endfunction