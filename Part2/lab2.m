function lab2
pkg load communications

N=1000; % ayto pio meta 8a to allakso 1E7
SNR_db=5;
SNR=10^(0.1*SNR_db);
NO=1/SNR;

disp('SNR_db:');
disp(SNR_db);
disp('SNR:')
disp(SNR)
disp('NO:');
disp(NO);

BER=qfunc(sqrt(2*SNR));
disp('BER:');
disp(BER);

%2o erotima
error_count= 0;

disp('originalbit');
for i=1:N
  originalbit=randi([0 1]);
  s=originalbit*2-1;  
  n=sqrt(NO/2)*randn;
  r=s+n;
  
  if(r>0)
    shat=1;
   else 
    shat=-1;
  endif

  disp([originalbit,s,r,shat]);
  
  if(shat~=s)
    error_count++;  
  endif
  
  
end
disp('error_counter');
disp(error_count);
calculateBER=error_count/N;
disp('calculateBER');
disp(calculateBER);

%gia 1o erotima ksana
disp('8eoritiko BER:');
disp(BER);

endfunction
