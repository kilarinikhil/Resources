f = -3999:1:4000;
yf = -3999*2:8000;
fl = length(f);
%part hanning
h = hanning(41);
F1 = ((f>-3001)-(f>3000))-((f>-2501)-(f>2500));
hm = fftshift([zeros(1,fl/2-21) h' zeros(1,fl/2-20)]);
HM = fftshift(fft(hm));

y = conv(HM,F1);
%plot(f,F);
figure(1)
plot(yf,real(y));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Hanning filter and 41 filter coefficients for Band stop filter');
xlim([-3500,3500]);

%part blackman
h1 = blackman(41);
F1 = ((f>-3001)-(f>3000))-((f>-2501)-(f>2500));
hm1 = fftshift([zeros(1,fl/2-21) h1' zeros(1,fl/2-20)]);
HM1 = fftshift(fft(hm1));

y1 = conv(HM1,F1);
%plot(f,F);
figure(2)
plot(yf,real(y1));
xlabel('frequency(Hz)');
ylabel('H(f)');
title('Using Blackman filter and 41 filter coefficients for Band stop filter');
xlim([-3500,3500]);