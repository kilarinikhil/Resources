%% First Question
x=-10:1:10;
sympref("HeavisideAtOrigin",1);
y=heaviside(x);
subplot(2,2,1)
stem(x,y);
title('Question 1a');
ylabel('U[n]');
xlabel('n');

x=-10:1:10;
sympref("HeavisideAtOrigin",1);
y=heaviside(x)-heaviside(x-1);
subplot(2,2,2)
stem(x,y);
title('Question 1b');
ylabel('d[n]');
xlabel('n');

x=0:10;
sympref("HeavisideAtOrigin",1);
y=x;
subplot(2,2,3)
stem(x,y);
title('Question 1c');
ylabel('ramp[n]');
xlabel('n');

x=0:10;
sympref("HeavisideAtOrigin",1);
y=0.9*exp(x);
subplot(2,2,4)
stem(x,y);
title('Question 1d');
ylabel('0.9*e^[^n^]');
xlabel('n');

%% Second Question
x=-10:0.5:10;
y=3*sin((2*pi*x)+(pi/3));
subplot(2,1,1)
stem(x,y);
title('Question 2a');
ylabel('3sin[(2*pi*n)+(pi/3)]');
xlabel('n');

x=-10:0.5:10;
y=5*cos((2*pi*x/3)+(pi/4))+2.5*sin((pi*x/3)+(pi/4));
subplot(2,1,2)
stem(x,y);
title('Question 2b');
ylabel('5cos[(2*pi*n)+(pi/4)]');
xlabel('n');

%% Question3
x=0:100;
sympref("HeavisideAtOrigin",1);
y=(0.9.^x).*heaviside(x);
stem(y);
total=sum(y);
title('Question 3');
ylabel('0.9^nu[n]');
xlabel('n');

%% Question4

n=0:1:20;
y=(1.2.^n).*exp(pi*n*i/3);
subplot(2,2,1)
stem(n,real(y));
title('real part');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');


subplot(2,2,2)
stem(n,imag(y));
ylabel('');
xlabel('n');
title('imaginary part');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');


subplot(2,2,3)
stem(n,abs(y));
title('magnitute');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');

subplot(2,2,4)
stem(n,angle(y));
title('phase');
ylabel('1.2^ne^j^*^p^i^*^n^/^3');
xlabel('n');
suptitle('Question 4 with r=1.2');

%% Question 5
x=-10:1:20;
impulse = x==0;
subplot(2,2,1)
stem(x,impulse);
title('5.1');
ylabel('d[n]');
xlabel('n');

subplot(2,2,2)
stem(x+11,impulse);
title('5.2');
ylabel('d[n-11]');
xlabel('n');

unitstep = x>=0;
subplot(2,2,3)
stem(x,unitstep);
title('5.3');
ylabel('s[n]');
xlabel('n');


subplot(2,2,4)
stem(x-7,unitstep);
title('5.4');
ylabel('s[n+11]');
xlabel('n');

suptitle('Question 5');
%% Question 6
x=1:50;
y=2.5.*sin((2*pi*0.08*x)+(pi/2));
stem(x,y);
title('Question 6.1')
ylabel('2.5sin[0.16*pi*n+pi/2]');
xlabel('n');

%% Question 7
t = 0:1/8000:0.1
x1 = 5*cos(2*pi*500*t);
x2 = 5*cos(2*pi*1200*t+0.25*pi);

x3 = x1+x2; 
stem(t,x3);
title('Question 6.2');
ylabel('x1[n]+x2[n]');
xlabel('n');
%% Question 8
x=1:100;
y = randi([-2,2],[1,100]);
subplot(2,1,1)
stem(x,y);
title('Question 7.1');
ylabel('rand[n]');
xlabel('n');


x=1:75;
y = normrnd(0,3^1/2,[1,75]);
subplot(2,1,2)
stem(x,y);
title('Question 7.2');
ylabel('gaussian rand[n]');
xlabel('n');


%% Question 9

x = 1:31;
for i = 1:5
    A = random('Uniform',0,4);
    phi = random('Uniform',0,2*pi);
    y = A * cos(0.5*x+phi);
    subplot(5,1,i)
    stem(x,y);
    title(strcat(strcat('A=',num2str(A)),strcat('   phi=',num2str(phi))));
    ylabel(strcat('rand',num2str(i)))';
    xlabel('n');
end
suptitle('Question 7.3');






















