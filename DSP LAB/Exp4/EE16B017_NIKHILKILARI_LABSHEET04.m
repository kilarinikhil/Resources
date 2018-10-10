%% Question 1

x1 = [0.59 0.95 0.95 0.59 0.00 0.59 0.95 0.95 0.59 0.00];
x2 = [0.16 0.97 0.96 0.49 0.80 0.14 0.42 0.92 0.79 0.96];
a =2;
b =5;
%Linearity
y1 = fft(a*x1 + b*x2);
y1f = a*fft(x1) + b*fft(x2);

figure(1)
subplot(2,2,1)
stem(abs(y1));
xlabel('k');
ylabel('abs (a*y1 + b*y2)')
subplot(2,2,2)
stem(angle(y1));
ylabel('angle (a*y1 + b*y2)')
xlabel('k');

subplot(2,2,3)
stem(abs(y1f));
xlabel('k');
ylabel('abs T(a*x1+b*x2)');
subplot(2,2,4)
stem(angle(y1f));
xlabel('k');
ylabel('angle T(a*x1+b*x2)');
%Time reversal
y3 = circshift(fft(x1),-10);
y3f = fft(circshift(x1,-10));

figure(2)
subplot(2,2,1)
stem(abs(y3));
xlabel('k');
ylabel('abs(X[w-10])');
subplot(2,2,2)
stem(angle(y3));
xlabel('k');
ylabel('angle(X[w-10])');
subplot(2,2,3)
stem(abs(y3f));
xlabel('k');
ylabel('abs response of x[n-10]');
subplot(2,2,4)
stem(angle(y3f));
xlabel('k');
ylabel('angular response of x[n-10]');


%Convolution-Multiplication
y4 = fft(conv(x1,x2),17);
y4f = fft(x1,17).*fft(x2,17);

figure(3)
subplot(2,2,1)
stem(abs(y4));
xlabel('k');
ylabel('abs of ft of y[n]')
subplot(2,2,2)
stem(angle(y4));
xlabel('k');
ylabel('angle of ft of y[n]');
subplot(2,2,3)
stem(abs(y4f));
xlabel('k');
ylabel('abs of X1[w]*X2[w]');
subplot(2,2,4)
stem(angle(y4f));
xlabel('k');
ylabel('angle of X1[w]*X2[w]');
%Time Shifting
t = 0:14;
x2m = [x1 zeros(1,5)];
y2m = fft(x2m).*exp(-2*j*t*pi*2/15);
y2 = fft(circshift(x2m,2));

figure(4)
subplot(2,2,1)
stem(abs(y2m));
xlabel('k');
ylabel('abs of ft of x[n-2]');
subplot(2,2,2)
stem(angle(y2m));
xlabel('k');
ylabel('angle of ft of x[n-2]')
subplot(2,2,3)
stem(abs(y2));
xlabel('k');
ylabel('abs of X[W]*EXP FACTOR');
subplot(2,2,4)
stem(angle(y2));
xlabel('k');
ylabel('angle of X[W]*EXP FACTOR');
%Parsevals Theorem
e1 = sum(x1*x1');
e2 = 1/10*sum(fft(x1)*(fft(x1))');
y2 = fft(circshift(x2m,2));


%% Question 2

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

%% Question 3

n = -10:0.1:10; 
x = sin(pi*n/4);
b = [0 0 1];
a = [1 0 0 0 0.5];
y = filter(b,a,x);
stem(y);
xlabel('n');
ylabel('y[n]');

%% Question 4

n=-1000/8000:1/8000:(1000/8000)-0.000125;
x1 = sin(200*pi*n);
ff1 = (fftshift(fft(x1)));
fre = -(8000/2):8000/length(ff1):(8000/2)-1;

figure
stem(fre,real(ff1),'r');
xlim([-500 500]);
hold on
stem(fre,imag(ff1));
xlim([-500 500]);


x2 = cos(200*pi*n);
ff2 = fftshift(fft(x2));

figure
stem(fre,real(ff2),'r');
xlim([-500 500])
hold on
stem(fre,imag(ff2));
xlim([-500 500])

x3 = exp(0.02*n);
ff3 = fftshift(x3);

figure
t=-100:100;
x1=exp(0.02.*t);
subplot(2,1,1);
stem(t,abs(fft(x1)));

subplot(2,1,2);
stem(t,angle(fft(x1)));

%% Question 5 

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
