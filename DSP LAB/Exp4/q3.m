syms t w
x = sin(pi*t/4);
ff = fourier(x,w);
ffi = ifourier(ff,t);
w = pi/4;
hej = exp(-j*2*w)/(1+(1/2)*exp(-j*4*w));
yejw = hej*ff;
yif = ifourier(yejw,t);
