n = -10:1:10;
b = 1;
a = [1 -0.8*exp(1i*pi/3)];
x = n==0;
[h,t] = impz(b,a);

subplot(2,1,1)
stem(t,real(h));
xlabel('n');
ylabel('h[n]');
title('real part');

subplot(2,1,2)
stem(t,imag(h));
xlabel('n');
ylabel('h[n]');
title('imaginary part');

suptitle('impulse response of differential equation');

