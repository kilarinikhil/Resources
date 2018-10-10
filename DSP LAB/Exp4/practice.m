Ts = 1/8000;
t = 0:Ts:3-Ts;
x1 = sin(2*pi*100*t);
x2 = sin(2*pi*200*t);
x3 = sin(2*pi*700*t);

x4 = x1+x2+x3;

X4 = 2/length(t)*fftshift(fft(x4));
nX4 = length(X4);

fgrid = -(4000/8):1000/nX4:(4000/8)-(Ts/8);

plot(fgrid,abs(X4));
xlim([-2000 2000]);
xlim([-500 500]);





