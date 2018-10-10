n1 = -2:2;
n2 = -1:2;
n3 = -3:4;
x1 = [6 3 2 3 4];
x2 = [4 7 5 6];
y = conv(x1,x2);
stem(n3, y);
xlabel('n');
ylabel('y[n]');

syms x
f = 6*(x^2) + 3*x + 2 + 3* (x^-1) + 4* (x^-2);
f1 = 4*x + 7 + 5* (x^-1) + 6 * (z^-2);
f3 = f1*f;
y1 = iztrans(f3);