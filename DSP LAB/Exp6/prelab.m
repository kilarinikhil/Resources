n = -25:24;
n1 = -5:5;
n2 = -10:10;
n3 = -20:20;
x1 = (n>-6) - (n>=6);
x2 = (n>-11) - (n>=11);
x3 = (n>-21)  - (n>=21);

y1 = fftshift(ifft(x1));
y2 = fftshift(ifft(x2));
y3 = fftshift(ifft(x3));

figure
subplot(3,2,1)
stem(n,x1);
subplot(3,2,2)
stem(real(y1));
subplot(3,2,3)
stem(n,x2);
subplot(3,2,4)
stem(real(y2));
subplot(3,2,5)
stem(n,x3);
subplot(3,2,6)
stem(real(y3));

t = -25:25;
figure
y4 = (sin(5*t)) ./ (pi*t);
y4(26) = 1;
stem(t,y4);
