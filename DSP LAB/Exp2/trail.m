n = 0:10;
b=1;
a=[1 -2];
x=n==0;
y = filter(b,a,x);
stem(n,y);