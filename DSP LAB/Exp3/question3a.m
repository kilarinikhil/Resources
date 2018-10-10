n = 0:15;

un = n>=0;
un10 = n>=10;
%first function
x1 = un - un10;
%second function
n1 = 0:10;
x2 = n1;
x2 = [x2 zeros(1,5)];

a = 2;
b = 4;

x3 = a*x1 + b*x2;

%Output 1
y1 = circshift(x3,3) .* circshift(x3,2);

y2 = circshift(x1,3) .* circshift(x1,2);
y3 = circshift(x2,3) .* circshift(x2,2);
y4 = a*y2 + b*y3;%Output 2

subplot(2,2,1)
stem(n,y1);
xlabel('n');
ylabel('y3');
subplot(2,2,2)
stem(n,y4);
xlabel('n');
ylabel('ay1+by2');

%Checking time invariance
x4 = circshift(x1,2);

y5 = circshift(x4,3) .* circshift(x4,2);

y6 =  circshift(x1,3) .* circshift(x1,2);
y6 = circshift(y6,2);

subplot(2,2,3)
stem(n,y5);
xlabel('n');
ylabel('y[n-2]');
subplot(2,2,4)
stem(n,y6);
xlabel('n');
ylabel('Output if input is x[n-2]');
