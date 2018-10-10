b1 = [1];
a1 = [1 1.5 -1];
x1 = impz(b1,a1);

b2 = [0 sin(pi/12)];
a2 = [1 -2*cos(pi/12) 1];
x2 = impz(b2,a2);

figure(1)
zplane(b1,a1);

figure(2)
zplane(b2,a2);

