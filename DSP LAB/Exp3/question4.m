k = 0:10;
x = 1-k;
h1 = [x(k<=3) zeros(1,length(k)-length(x(k<=3)))];
subplot(3,1,1)
stem(k,h1);
subplot(3,1,1)
xlabel('n');
ylabel('h1');
title('Causal and Stable');

k = -10:40;
h = sin(2*pi*k/50);
h2 = [h(k<=30) zeros(1,10)];
subplot(3,1,2)
stem(k,h2);
xlabel('n');
ylabel('h2');
title('Non Causal but Stable');

k = -10:40;
u = k>=-2;
h4 = sin(2*pi*f*k) .* u;
subplot(3,1,3)
stem(k,h4);
xlabel('n');
ylabel('h4');
title('Non Causal and also not Stable');

suptitle('Question 4');