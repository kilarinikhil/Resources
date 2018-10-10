n = 0:14;

nx = 0:4;
nz = zeros(1,3);
x = nx+1;
x = [x nz];

nh = 0:3;
nz = zeros(1,4);
h = 1-nh;
h = [h nz];

y = conv(x,h);
subplot(2,1,1)
stem(n,y);
xlabel('n');
ylabel('y[n]');

h2 = circshift(h,2);
y2 = conv(x,h2);
subplot(2,1,2)
stem(n,y2);
xlabel('n');
ylabel('y[n-2]');
suptitle('Question1');