x=-10:1:20;
impulse = x==0;
subplot(2,2,1)
stem(x,impulse);
title('5.1');
ylabel('d[n]');
xlabel('n');

subplot(2,2,2)
stem(x+11,impulse);
title('5.2');
ylabel('d[n-11]');
xlabel('n');

unitstep = x>=0;
subplot(2,2,3)
stem(x,unitstep);
title('5.3');
ylabel('s[n]');
xlabel('n');


subplot(2,2,4)
stem(x-7,unitstep);
title('5.4');
ylabel('s[n+11]');
xlabel('n');

suptitle('Question 5');