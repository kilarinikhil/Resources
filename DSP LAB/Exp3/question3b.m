n = -2:10;

un = n>=0;
un10 = n>=10;

x1 = un - un10;

n1 = 0:10;
x2 = n1;
x2 = [zeros(1,2) x2];

a = 2;
b = 3;

xin = a*x1 + b*x2;

y = circshift(xin,-2);

y1 = a*circshift(x1,-2) + b*circshift(x2,-2);

subplot(2,2,1)
stem(n,y);
xlabel('n');
ylabel('y3');

subplot(2,2,2)
stem(n,y1);
xlabel('n');
ylabel('ay1+by2');

%shifted version of x1 by one unit
x3 = circshift(x1,-1);
%Output1
y3 = circshift(x3,-2);
%Output when x1 is given as input
y4 = circshift(x1,-2);
%Shifting output by one unit
y5 = circshift(y4,-1);%Output2

subplot(2,2,3)
stem(n,y3);
xlabel('n');
ylabel('Output if input is x[n-2]');

subplot(2,2,4)
stem(n,y5);
xlabel('n');
ylabel('y[n-2]');
