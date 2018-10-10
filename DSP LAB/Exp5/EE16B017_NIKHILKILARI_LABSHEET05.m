%% q1a
  a = [1 -0.4 0.75];
b = [2.2403 2.4908 2.2403];
[h t] = impz(b,a,50);
stem(t,h)
xlabel('n');
ylabel('h[n]');

%% q1b
b = [0.9 -0.45 0.35 0.003];
a = [1 0.71 -0.46 -0.62];
[h,t]=impz(b,a,40);
stem(t,h);
xlabel('n');
ylabel('h[n]');

%% q1c
n = 0:39;
x = n==0;
b = [0.9 -0.45 0.35 0.003];
a = [1 0.71 -0.46 -0.62];
h = filter(b,a,x);
stem(h);
xlabel('n');
ylabel('h[n]');

%% q1d
n = 0:39;
x = n==0;
b = [0.9 -0.45 0.35 0.003];
a = [1 0.71 -0.46 -0.62];
h = filter(b,a,x);
u = n>=0;
y = conv(u,h);
stem(y);
xlabel('n');
ylabel('y[n]');

%% q2
syms n a z
f = (a^n);
y = ztrans(f,z);
f1 = iztrans(y);

%% q3
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

%% q4
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

%% q5
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