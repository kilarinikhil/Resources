t = -20:1/1000:20;
y = sin(pi*t/4)./(pi*t);
y(20001) = 0.25;

rect = (t>-10-1/1000)-(t>10);
y1 = rect.*y;

Y1 = fftshift(fft(y1));
%stem(t,y1);
stem(abs(Y1));
xlim([19990 20009]);
