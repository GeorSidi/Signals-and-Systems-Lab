function ask3

Dt = 0.0001;
t=-1000:Dt:1000;
x=exp(abs(t)*(-2));
xs=x.^ 2;
a = Dt*sum(xs);
fprintf('ari8mitiki energeia: ')
a
fprintf('\n');


pkg load symbolic;
syms a;
y=exp(abs(a)*(-2));
ys=y.^ 2;
b=int(ys,a, -inf , inf);
fprintf('simboliki energeia: ')
b
fprintf('\n');


endfunction