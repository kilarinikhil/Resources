n= 0:1:20;
M= 21;
a= (M-1)/2;
L= n-a;
h_d= 0.25*sinc(0.25*L); 
w= hamming(M);
k= h_d.*(w');
p= 100;
X= fft(k,p);
W= ((2*pi)/p)*(1:1:p);
W1= fftshift(W);
W2= unwrap(W1-(2*pi));
plot((W2/pi),abs(fftshift(X)));
xlabel('w/pi'); ylabel('magnitude of DTFT of X')