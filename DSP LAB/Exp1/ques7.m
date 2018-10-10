t = 0:1/8000:0.1
x1 = 5*cos(2*pi*500*t);
x2 = 5*cos(2*pi*1200*t+0.25*pi);

x3 = x1+x2; 
stem(t,x3);
title('Question 6.2');
ylabel('x1[n]+x2[n]');
xlabel('n');