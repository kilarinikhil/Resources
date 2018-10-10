n = -10:0.1:10; 
x = sin(pi*n/4);
b = [0 0 1];
a = [1 0 0 0 0.5];
y = filter(b,a,x);
stem(y);
xlabel('n');
ylabel('y[n]');