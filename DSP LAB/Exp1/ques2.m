x=-10:0.5:10;
y=3*sin((2*pi*x)+(pi/3));
subplot(2,1,1)
stem(x,y);
title('Question 2a');
ylabel('3sin[(2*pi*n)+(pi/3)]');
xlabel('n');

x=-10:0.5:10;
y=5*cos((2*pi*x/3)+(pi/4))+2.5*sin((pi*x/3)+(pi/4));
subplot(2,1,2)
stem(x,y);
title('Question 2b');
ylabel('5cos[(2*pi*n)+(pi/4)]');
xlabel('n');