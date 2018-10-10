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