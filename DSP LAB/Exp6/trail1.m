f = -3999:1:4000;
yf = -3999*2:8000;
fl = length(f);
h = hanning(21);
F = (f>-2499)-(f>2500);
F1 = 1-F;
hm = fftshift([zeros(1,fl/2-11) h' zeros(1,fl/2-10)]);
HM = fftshift(fft(hm));

y = conv(HM,F1);
%plot(f,F);
plot(yf,real(y));
