function ask5
  pkg load symbolic;
  
  syms y(t);
  syms x(t);
  x(t)=5*t+3;
  
  dx=diff(x,t);
  dy=diff(y,t);
  
  yzi = dsolve(diff(diff(y,t))+6*diff(y,t)+9*y==0,y(0)==1,dy(0)==-1);
  printf('apokrisi midenikis eisodoy: ');
  yzi
  printf('\n');
  
  yzs=dsolve(diff(dy,t)+6*dy+9*y==9*x(t)+dx,dy(0)==0,y(0)==0);
  printf('apokrisi midenikis katastasis: ');
  yzs
  printf('\n');
  
  printf('sinoliki apokrisi katastasis: ');
  ytotal = yzi + yzs
  printf('\n');
  
  endfunction