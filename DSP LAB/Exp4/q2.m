%a
trec = -4:.1:4;
frerec = trec*pi/4;
xrec = rectangularPulse(trec);
frec = fftshift(fft(xrec));
subplot(3,2,1)
stem(frerec,abs(frec));
xlabel('k');
ylabel('abs of X[k]');
title('Rectangular Wave');
subplot(3,2,2)
stem(frerec,angle(frec));
xlabel('k');
ylabel('angle of X[k]');
title('Rectangular Wave');

%b
t = -0.25:1/8000:0.25;
fre = t*pi/0.25;
y = sin(2*pi*100*t);
f1 = fftshift(fft(y));
subplot(3,2,3)
stem(fre,abs(f1));
xlabel('k');
ylabel('abs of X[k]');
title('Sinusoidal Wave');
subplot(3,2,4)
stem(fre,angle(f1));
xlabel('k');
ylabel('angle of X[k]');
title('Sinusoidal Wave');

%c
tgaus = -10:0.1:10;
fregaus = tgaus*pi/10;
ygaus = gaussmf(tgaus,[1,0])*(1/(2*pi)^0.5);
fgaus = fftshift(fft(ygaus));
subplot(3,2,5)
stem(fregaus,abs(fgaus));
xlabel('k');
ylabel('abs of X[k]');
title('Gaussian Function');
subplot(3,2,6)
stem(fregaus,angle(fgaus));
xlabel('k');
ylabel('angle of X[k]');
title('Gaussian Function');

