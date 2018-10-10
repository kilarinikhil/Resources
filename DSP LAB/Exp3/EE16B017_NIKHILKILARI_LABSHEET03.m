%% Question 1
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

%% Questiion 2
k = -5:5;
xl = [5 4 6];
xr = [7 3 2];
x1 = [zeros(1,5) xl xr];
xflip = [fliplr(xr) fliplr(xl) zeros(1,5)];

xe1 = 0.5*(x1+xflip);
xo1 = 0.5*(x1-xflip);

subplot(2,2,1)
stem(k,xe1);
xlabel('n');
ylabel('Even part of 2a');

subplot(2,2,2)
stem(k,xo1);
xlabel('n');
ylabel('Odd part of 2a');




n = -20:20;
f = 1000*pi;
x2 = sin(2*pi*f*n)+cos(pi*f*n);
xmt = [fliplr(x2(n>=0)) fliplr(x2(n<0))];

xe = 0.5*(x2+xmt);
xo = 0.5*(x2-xmt);

subplot(2,2,3)
stem(n,xe);
xlabel('n');
ylabel('Even part of 2b');

subplot(2,2,4)
stem(n,xo);
xlabel(n'');
ylabel('Odd part of 2b');
%% Question 3a
n = 0:15;

un = n>=0;
un10 = n>=10;
%first function
x1 = un - un10;
%second function
n1 = 0:10;
x2 = n1;
x2 = [x2 zeros(1,5)];

a = 2;
b = 4;

x3 = a*x1 + b*x2;

%Output 1
y1 = circshift(x3,3) .* circshift(x3,2);

y2 = circshift(x1,3) .* circshift(x1,2);
y3 = circshift(x2,3) .* circshift(x2,2);
y4 = a*y2 + b*y3;%Output 2

subplot(2,2,1)
stem(n,y1);
xlabel('n');
ylabel('y3');
subplot(2,2,2)
stem(n,y4);
xlabel('n');
ylabel('ay1+by2');

%Checking time invariance
x4 = circshift(x1,2);

y5 = circshift(x4,3) .* circshift(x4,2);

y6 =  circshift(x1,3) .* circshift(x1,2);
y6 = circshift(y6,2);

subplot(2,2,3)
stem(n,y5);
xlabel('n');
ylabel('y[n-2]');
subplot(2,2,4)
stem(n,y6);
xlabel('n');
ylabel('Output if input is x[n-2]');
%% Question 3b
n = -2:10;

un = n>=0;
un10 = n>=10;

x1 = un - un10;

n1 = 0:10;
x2 = n1;
x2 = [zeros(1,2) x2];

a = 2;
b = 3;

xin = a*x1 + b*x2;

y = circshift(xin,-2);

y1 = a*circshift(x1,-2) + b*circshift(x2,-2);

subplot(2,2,1)
stem(n,y);
xlabel('n');
ylabel('y3');

subplot(2,2,2)
stem(n,y1);
xlabel('n');
ylabel('ay1+by2');

%shifted version of x1 by one unit
x3 = circshift(x1,-1);
%Output1
y3 = circshift(x3,-2);
%Output when x1 is given as input
y4 = circshift(x1,-2);
%Shifting output by one unit
y5 = circshift(y4,-1);%Output2

subplot(2,2,3)
stem(n,y3);
xlabel('n');
ylabel('Output if input is x[n-2]');

subplot(2,2,4)
stem(n,y5);
xlabel('n');
ylabel('y[n-2]');
%% Question 3c
n = -2:10;

un = n>=0;
un10 = n>=10;

x1 = un - un10;

n1 = 0:10;
x2 = n1;
x2 = [zeros(1,2) x2];

%Checking Linearity
a = 2;
b = -3;
x3 = a*x1 + b*x2;

y1 = sin(x3);

y2 = a*sin(x1) + b*sin(x2);

subplot(2,2,1)
stem(n,y1);
xlabel('n');
ylabel('y3');

subplot(2,2,2)
stem(n,y2);
xlabel('n');
ylabel('ay1+by2');

x4 = circshift(x2,-2);
y3 = sin(x4);

y4 = circshift(sin(x2),-2);

subplot(2,2,3)
stem(n,y3);
xlabel('n');
ylabel('Output if input is x[n-2]');

subplot(2,2,4)
stem(n,y4);
xlabel('n');
ylabel('y[n-2]');
%Non-Linear but Time Invariant
%% Question 4
k = 0:10;
x = 1-k;
h1 = [x(k<=3) zeros(1,length(k)-length(x(k<=3)))];
subplot(3,1,1)
stem(k,h1);
subplot(3,1,1)
xlabel('n');
ylabel('h1');
title('Causal and Stable');

k = -10:40;
h = sin(2*pi*k/50);
h2 = [h(k<=30) zeros(1,10)];
subplot(3,1,2)
stem(k,h2);
xlabel('n');
ylabel('h2');
title('Non Causal but Stable');

k = -10:40;
u = k>=-2;
h4 = sin(2*pi*f*k) .* u;
subplot(3,1,3)
stem(k,h4);
xlabel('n');
ylabel('h4');
title('Non Causal and also not Stable');

suptitle('Question 4');
%% Question exp1
t = 0:1/22100:4;

f1 = 2*pi*500;
f2 = 2*pi*1000;

fs = 22100;
y1 = sin(f1*t);
player1 = audioplayer(y1,fs);

y2 = square(pi*t);
player2 = audioplayer(y2,fs);

y3 = chirp(t,0,2,1000);
player3 = audioplayer(y3,fs);

y4 = sin(f1*t)+sin(f2*t);
player4 = audioplayer(y4,fs);


%% Question exp2
recobj = audiorecorder;
recordblocking(recobj,3);
play(recobj);

myrecording = getaudiodata(recobj);
plot(myrecording);

down = downsample(myrecording,2);
player1 = audioplayer(recobj);
player2 = audioplayer(down,8000);

up = upsample(down,2);
player3 = audioplayer(up,8000);

play(player1);
