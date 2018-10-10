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