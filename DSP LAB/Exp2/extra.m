num = [1 1/2];
den = [1 -1/2];
[h n] = impz(num, den);
[hi ni] = impz(den,num);

n1 = 0:length(n)-1 + length(ni)-1;

y = conv(h,hi);
stem(n1,y)
