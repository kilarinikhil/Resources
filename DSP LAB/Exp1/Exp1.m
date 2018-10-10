%First Question
x=-10:1:10;
sympref("HeavisideAtOrigin",1);
y=heaviside(x);
subplot(2,2,1)
stem(x,y);
title('Question 1a');
ylabel('U[n]');
xlabel('n');

x=-10:1:10;
sympref("HeavisideAtOrigin",1);
y=heaviside(x)-heaviside(x-1);
subplot(2,2,2)
stem(x,y);
title('Question 1b');
ylabel('d[n]');
xlabel('n');

x=0:10;
sympref("HeavisideAtOrigin",1);
y=x;
subplot(2,2,3)
stem(x,y);
title('Question 1c');
ylabel('ramp[n]');
xlabel('n');

x=0:10;
sympref("HeavisideAtOrigin",1);
y=0.9*exp(x);
subplot(2,2,4)
stem(x,y);
title('Question 1d');
ylabel('0.9*e^[^n^]');
xlabel('n');