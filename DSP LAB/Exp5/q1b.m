b = [0.9 -0.45 0.35 0.003];
a = [1 0.71 -0.46 -0.62];
[h,t]=impz(b,a,40);
stem(t,h);
xlabel('n');
ylabel('h[n]');