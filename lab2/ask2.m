function ask2
  pkg load symbolic;
  pkg load signal;
  
  %2.a
  f=-60:60;
  Hf = 1./(3+(j*2*pi*f));
  
  subplot(2,1,1);
  plot(f,abs(Hf)); grid;
  title('Magnitude of H(f)');
  xlabel('Frequency (Hz)');
  ylabel('Magnitude');
      
  subplot(2,1,2);
  plot(f,angle(Hf)); grid;
  title('Phase of H(f)');
  xlabel('Frequency (Hz)');
  ylabel('Phase');
      
  saveas(gcf,'ask2_a.jpg');
  refresh();
  
  %2.b
  Hff =(2+(j*2*pi*f))./(3+(j*2*pi*f));
  subplot(2,1,1);
  plot(f,abs(Hff)); grid;
  title('Magnitude of H(f)');
  xlabel('Frequency (Hz)');
  ylabel('Magnitude');
      
  subplot(2,1,2);
  plot(f,angle(Hff)); grid;
  title('Phase of H(f)');
  xlabel('Frequency (Hz)');
  ylabel('Phase');
      
  saveas(gcf,'ask2_b.jpg');

    
endfunction
