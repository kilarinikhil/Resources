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



