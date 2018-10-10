x=0:100;
sympref("HeavisideAtOrigin",1);
y=(0.9.^x).*heaviside(x);
stem(y);
total=sum(y);
title('Question 3');
ylabel('0.9^nu[n]');
xlabel('n');