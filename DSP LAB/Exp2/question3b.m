n = -30:30;
a = 1/10;
b = pi/6;
z = a+b*1i;
y = exp(z*n);
subplot(2,1,1)
stem(n, real(y));
subplot(2,1,2)
stem(n, imag(y));
