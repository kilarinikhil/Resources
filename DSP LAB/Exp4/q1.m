x1 = [0.59 0.95 0.95 0.59 0.00 0.59 0.95 0.95 0.59 0.00];
x2 = [0.16 0.97 0.96 0.49 0.80 0.14 0.42 0.92 0.79 0.96];
a =2;
b =5;
%Linearity
y1 = fft(a*x1 + b*x2);
y1f = a*fft(x1) + b*fft(x2);

figure(1)
subplot(2,2,1)
stem(abs(y1));
xlabel('k');
ylabel('abs (a*y1 + b*y2)')
subplot(2,2,2)
stem(angle(y1));
ylabel('angle (a*y1 + b*y2)')
xlabel('k');

subplot(2,2,3)
stem(abs(y1f));
xlabel('k');
ylabel('abs T(a*x1+b*x2)');
subplot(2,2,4)
stem(angle(y1f));
xlabel('k');
ylabel('angle T(a*x1+b*x2)');
%Time reversal
y3 = circshift(fft(x1),-10);
y3f = fft(circshift(x1,-10));

figure(2)
subplot(2,2,1)
stem(abs(y3));
xlabel('k');
ylabel('abs(X[w-10])');
subplot(2,2,2)
stem(angle(y3));
xlabel('k');
ylabel('angle(X[w-10])');
subplot(2,2,3)
stem(abs(y3f));
xlabel('k');
ylabel('abs response of x[n-10]');
subplot(2,2,4)
stem(angle(y3f));
xlabel('k');
ylabel('angular response of x[n-10]');


%Convolution-Multiplication
y4 = fft(conv(x1,x2),17);
y4f = fft(x1,17).*fft(x2,17);

figure(3)
subplot(2,2,1)
stem(abs(y4));
xlabel('k');
ylabel('abs of ft of y[n]')
subplot(2,2,2)
stem(angle(y4));
xlabel('k');
ylabel('angle of ft of y[n]');
subplot(2,2,3)
stem(abs(y4f));
xlabel('k');
ylabel('abs of X1[w]*X2[w]');
subplot(2,2,4)
stem(angle(y4f));
xlabel('k');
ylabel('angle of X1[w]*X2[w]');
%Time Shifting
t = 0:14;
x2m = [x1 zeros(1,5)];
y2m = fft(x2m).*exp(-2*j*t*pi*2/15);
y2 = fft(circshift(x2m,2));

figure(4)
subplot(2,2,1)
stem(abs(y2m));
xlabel('k');
ylabel('abs of ft of x[n-2]');
subplot(2,2,2)
stem(angle(y2m));
xlabel('k');
ylabel('angle of ft of x[n-2]')
subplot(2,2,3)
stem(abs(y2));
xlabel('k');
ylabel('abs of X[W]*EXP FACTOR');
subplot(2,2,4)
stem(angle(y2));
xlabel('k');
ylabel('angle of X[W]*EXP FACTOR');
%Parsevals Theorem
e1 = sum(x1*x1');
e2 = 1/10*sum(fft(x1)*(fft(x1))');
y2 = fft(circshift(x2m,2));



