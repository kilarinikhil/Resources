x1 = [4 2 6 3 8 1 5];
x2 = [3 8 6 9 6 7];
fx1 = flip(x1);
fx2 = flip(x2);

subplot(3,1,1)
stem(conv(x1,fx1));
xlabel(n);
ylabel('autocorrel of x1');

subplot(3,1,2)
stem(conv(x2,fx2));
xlabel(n);
ylabel('autocorrel of x2');

subplot(3,1,3)
stem(conv(x1,fx2));
xlabel(n);
ylabel('crosscorrel of x1 and x2');

suptitle('Auto and cross correlations')