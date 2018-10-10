n = 0:10;
b=1;
a=[1 -0.5];
x=n==0;
y = filter(b,a,x);
stem(n,y);
title('Solution of differential equation');
xlabel('n');
ylabel('y[n]');