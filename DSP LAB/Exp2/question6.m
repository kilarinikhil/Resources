n = -10:100;
b = [1 0.5];
a = [1 -1.8*cos(pi/16) 0.81];
x =  n ==0;
y = filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel('h[n]');
title('Impulse response of diferential equation');