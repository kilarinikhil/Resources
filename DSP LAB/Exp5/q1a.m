  a = [1 -0.4 0.75];
b = [2.2403 2.4908 2.2403];
[h t] = impz(b,a,50);
stem(t,h)
xlabel('n');
ylabel('h[n]');