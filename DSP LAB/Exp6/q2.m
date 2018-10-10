f = -3999:1:4000;
yf = -3999*2:8000;
fl = length(f);
%part hanning
h = hanning(31);
F = (f>-2499)-(f>2500);
F1 = 1-F;
hm = fftshift([zeros(1,fl/2-16) h' zeros(1,fl/2-15)]);
HM = fftshift(fft(hm));

y = conv(HM,F1);
figure(1)
plot(yf,real(y));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Hanning filter and 31 filter coefficients for High Pass filter');
xlim([-3500,3500]);

%part hamming
h1 = hamming(31);
hm1 = fftshift([zeros(1,fl/2-16) h1' zeros(1,fl/2-15)]);
HM1 = fftshift(fft(hm1));

y1 = conv(HM1,F1);
figure(2)
plot(yf,real(y1));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Hamming filter and 31 filter coefficients for High Pass filter');
xlim([-3500,3500]);

%part blackman
h2 = blackman(31);
hm2 = fftshift([zeros(1,fl/2-16) h2' zeros(1,fl/2-15)]);
HM2 = fftshift(fft(hm2));

y2 = conv(HM2,F1);
figure(3)
plot(yf,real(y2));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Blackman filter and 31 filter coefficients for High Pass filter');
xlim([-3500,3500]);