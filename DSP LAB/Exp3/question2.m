k = -5:5;
xl = [5 4 6];
xr = [7 3 2];
x1 = [zeros(1,5) xl xr];
xflip = [fliplr(xr) fliplr(xl) zeros(1,5)];

xe1 = 0.5*(x1+xflip);
xo1 = 0.5*(x1-xflip);

subplot(2,2,1)
stem(k,xe1);
xlabel('n');
ylabel('Even part of 2a');

subplot(2,2,2)
stem(k,xo1);
xlabel('n');
ylabel('Odd part of 2a');




n = -20:20;
f = 1000*pi;
x2 = sin(2*pi*f*n)+cos(pi*f*n);
xmt = [fliplr(x2(n>=0)) fliplr(x2(n<0))];

xe = 0.5*(x2+xmt);
xo = 0.5*(x2-xmt);

subplot(2,2,3)
stem(n,xe);
xlabel('n');
ylabel('Even part of 2b');

subplot(2,2,4)
stem(n,xo);
xlabel(n'');
ylabel('Odd part of 2b');
