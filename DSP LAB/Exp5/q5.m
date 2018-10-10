b = [1 -2];
a = [1 -2/3];
figure(1)
zplane(b,a);
[h n] = impz(b,a);

figure(2)
stem(n,h);
xlabel('n');
ylabel('h[n]');

bx = [-5/3];
ax = [1 -7/3 2/3];
[x n1] = impz(bx,ax);

figure(3)
stem(n1,x);
xlabel('n');
ylabel('x[n]');

by = [-5/3];
ay = [1 -1 2/9];
[y n2] = impz(by,ay);
figure(4)
stem(n2,y);
xlabel('n');
ylabel('y[n]');