x=1:50;
y=2.5.*sin((2*pi*0.08*x)+(pi/2));
stem(x,y);
title('Question 6.1')
ylabel('2.5sin[0.16*pi*n+pi/2]');
xlabel('n');