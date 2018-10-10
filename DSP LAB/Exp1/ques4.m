n=0:1:20;
y=(1.2.^n).*exp(pi*n*i/3);
subplot(2,2,1)
stem(n,real(y));
title('real part');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');


subplot(2,2,2)
stem(n,imag(y));
ylabel('');
xlabel('n');
title('imaginary part');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');


subplot(2,2,3)
stem(n,abs(y));
title('magnitute');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');

subplot(2,2,4)
stem(n,angle(y));
title('phase');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');
suptitle('Question 4 with r=1.2');