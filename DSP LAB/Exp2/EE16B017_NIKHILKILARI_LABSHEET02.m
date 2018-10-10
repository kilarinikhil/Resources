%% Question 1 
n = -3:8;
n1 = -1:5;
n2 = -2:3;
x1 = [4 2 6 3 8 1 5];
x2 = [3 8 6 9 6 7];
y = conv(x1,x2);

subplot(3,1,1)
stem(n1,x1);
xlabel('n');
ylabel('x1[n]');

subplot(3,1,2)
stem(n2,x2);
xlabel('n');
ylabel('x2[n]');

subplot(3,1,3)
stem(n,y);
xlabel('n');
ylabel('y[n]');

suptitle('Convolution of discrete sequences');

%% Question 2
x1 = [4 2 6 3 8 1 5];
x2 = [3 8 6 9 6 7];
fx1 = flip(x1);
fx2 = flip(x2);

subplot(3,1,1)
stem(conv(x1,fx1));
xlabel(n);
ylabel('autocorrel of x1');

subplot(3,1,2)
stem(conv(x2,fx2));
xlabel(n);
ylabel('autocorrel of x2');

subplot(3,1,3)
stem(conv(x1,fx2));
xlabel(n);
ylabel('crosscorrel of x1 and x2');

suptitle('Auto and cross correlations')
%% Question 3a
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

%% Question 3b
n = -30:30;
a = 1/10;
b = pi/6;
z = a+b*1i;
y = exp(z*n);
subplot(2,1,1)
stem(n, real(y));
subplot(2,1,2)
stem(n, imag(y));

%% Question 4
n = 0:10;
b=1;
a=[1 -0.5];
x=n==0;
y = filter(b,a,x);
stem(n,y);
title('Solution of differential equation');
xlabel('n');
ylabel('y[n]');

%% Question 5
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

%% Question 6

n = -10:100;
b = [1 0.5];
a = [1 -1.8*cos(pi/16) 0.81];
x =  n ==0;
y = filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel('h[n]');
title('Impulse response of diferential equation');

