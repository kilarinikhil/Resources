f = -3999:1:4000;
yf = -3999*2:8000;
fl = length(f);
%part a
h = hamming(21);
F = (f>-999)-(f>1000);

hm = fftshift([zeros(1,fl/2-11) h' zeros(1,fl/2-10)]);
HM = fftshift(fft(hm));

y = conv(HM,F);
%plot(f,F);
figure(1)
plot(yf,real(y));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Hamming filter and 21 filter coefficients');

%part b
h = hamming(31);
F = (f>-999)-(f>1000);

hm = fftshift([zeros(1,fl/2-16) h' zeros(1,fl/2-15)]);
HM = fftshift(fft(hm));
y1 = conv(HM,F);
figure(2)
plot(yf,real(y1))
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Hamming filter and 31 filter coefficients');

%part c
h = hamming(41);
F = (f>-999)-(f>1000);

hm = fftshift([zeros(1,fl/2-21) h' zeros(1,fl/2-20)]);
HM = fftshift(fft(hm));
y1 = conv(HM,F);
figure(3)
plot(yf,real(y1));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Hamming filter and 41 filter coefficients');