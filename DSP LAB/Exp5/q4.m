b1 = [3 1];
a1 = [1 -0.25 -0.125];
[h n1] = impz(b1,a1);

b2 = [1 -1];
a2 = [1 -0.6];
[x n2] = impz(b2,a2);

b3 = [3 -2 -1];
a3 = [1 -0.85 0.025 0.075];
[y n3] = impz(b3,a3);

figure(1)
zplane(b1,a1);

figure(2)
zplane(b2,a2);

figure(3)
zplane(b3,a3);

figure(4)
stem(n1,h);
xlabel('n');
ylabel('h[n]');

figure(5)
stem(n3,y);
xlabel('n');
ylabel('y[n]');