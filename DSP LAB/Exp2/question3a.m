n = -30:30;

a1 = -1/50;
b1 = pi/6;
z1 = a1+b1*1i;
y1 = exp(z1*n);

subplot(2,2,1)
stem(n, real(y1));
xlabel('n');
ylabel('real of y1');

subplot(2,2,2)
stem(n, imag(y1));
xlabel('n');
ylabel('imag of y1');

a2 = 1/50;
b2 = pi/6;
z2 = a2+b2*1i;
y2 = exp(z2*n);

subplot(2,2,3)
stem(n, real(y2));
xlabel('n');
ylabel('real of y2');

subplot(2,2,4)
stem(n, imag(y2));
xlabel('n');
ylabel('imag of y2');

suptitle('Exponentially growing and decaying signals');
