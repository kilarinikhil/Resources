x=1:100;
y = randi([-2,2],[1,100]);
subplot(2,1,1)
stem(x,y);
title('Question 7.1');
ylabel('rand[n]');
xlabel('n');


x=1:75;
y = normrnd(0,3^1/2,[1,75]);
subplot(2,1,2)
stem(x,y);
title('Question 7.2');
ylabel('gaussian rand[n]');
xlabel('n');


