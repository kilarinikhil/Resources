n = -2:10;

un = n>=0;
un10 = n>=10;

x1 = un - un10;

n1 = 0:10;
x2 = n1;
x2 = [zeros(1,2) x2];

%Checking Linearity
a = 2;
b = -3;
x3 = a*x1 + b*x2;

y1 = sin(x3);

y2 = a*sin(x1) + b*sin(x2);

subplot(2,2,1)
stem(n,y1);
xlabel('n');
ylabel('y3');

subplot(2,2,2)
stem(n,y2);
xlabel('n');
ylabel('ay1+by2');

x4 = circshift(x2,-2);
y3 = sin(x4);

y4 = circshift(sin(x2),-2);

subplot(2,2,3)
stem(n,y3);
xlabel('n');
ylabel('Output if input is x[n-2]');

subplot(2,2,4)
stem(n,y4);
xlabel('n');
ylabel('y[n-2]');
%Non-Linear but Time Invariant