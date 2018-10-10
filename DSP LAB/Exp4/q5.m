%% Dual Tone Signal 
figure
t=0:1/8000:(0.5-1/8000);
x1=sin(2.*pi*300*t)+sin(2.*pi*100*t);
y=(fftshift(fft(x1)));
f=-(8000/2):8000/length(y):(8000/2)-1;
stem(f,abs(y));
xlim([-500 500]);

%% power and amplitude spectrum 1hz resolution
figure
t=0:1/8000:(1-(1/8000));
x1=2.*cos(2.*pi*1000*t);
y=(fftshift(fft(x1)));
subplot(2,1,1);
stem(abs(y));
xlabel('K');
ylabel('Amplitude Spectrum');
title('frequency resolution 1Hz');
s=(abs(y)).^2;
s1=s/(8000*8000);
subplot(2,1,2);
stem(s1);
xlabel('f');
ylabel('power Spectrum');
title('frequency resolution 1Hz');
%% power and amplitude spectrum 8hz resolution
figure
t=0:1/8000:(1/8-(1/8000));
x1=2.*cos(2.*pi*1000*t);
y=(fftshift(fft(x1)));
subplot(2,1,1);
stem(abs(y));
xlabel('K');
ylabel('Amplitude Spectrum');
title('frequency resolution 8Hz');
s=(abs(y)).^2;
s1=s/(8000*8000);
subplot(2,1,2);
stem(s1);
xlabel('f');
ylabel('power Spectrum');
title('frequency resolution 8Hz');
%% power and amplitude spectrum 16hz resolution
figure
t=0:1/8000:(1/16-(1/8000));
x1=2.*cos(2.*pi*1000*t);
y=(fftshift(fft(x1)));
subplot(2,1,1);
stem(abs(y));
xlabel('K');
ylabel('Amplitude Spectrum');
title('frequency resolution 16Hz');
s=(abs(y)).^2;
s1=s/(8000*8000);
subplot(2,1,2);
stem(s1);
xlabel('f');
ylabel('power Spectrum');
title('frequency resolution 16Hz');