n = 0:39;
x = n==0;
b = [0.9 -0.45 0.35 0.003];
a = [1 0.71 -0.46 -0.62];
h = filter(b,a,x);
stem(h);
xlabel('n');
ylabel('h[n]');