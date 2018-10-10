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

