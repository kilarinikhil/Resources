n=-10:10;
y=sin(n);
x=[flip(y(n>=0)) flip(y(n<0))];
x1=flip(y);
subplot(2,1,1)
stem(n,x);
subplot(2,1,2)
stem(n,x1)
