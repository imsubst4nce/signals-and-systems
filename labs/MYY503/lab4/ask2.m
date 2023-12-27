#        #
 # # # #
  #Lab4#
  # # # #
 #       #

###################################################
# Askisi - Deigmatolipsia shmatos synexous xronou #
###################################################


# x(t) = 2cos(2πt + π/4)

# a.

t = [0:0.001:3]

xt = 2*cos((2*pi.*t)+(pi/4));

# b.
#Ts = 0.2 ara fs = 1 / Ts = 1/0.2 = 5Hz

Ts = 0.2; # sampling period
fs = 1/Ts; # sampling freq
t1 = [0:1/fs:3] # Axonas xronou me fs

x1t = 2*cos((2*pi.*t1)+(pi/4));

# kai ta dyo mazi se ena diagramma
# thn x1t thn evala se scatter gia na fainontai ta diakrita
# shmeia pou apoteloun to sima
figure; plot(t,xt, "r"); hold on; scatter(t1, x1t, "fill");
axis([0 3 -2 2]); grid; xlabel("t(s)");
ylabel("x(t) - red\nx1(t) - blue");

# c.
xrec = zeros(size(t))

for i = 1:length(x1t)
  xrec = xrec + x1t(i).*sinc(t*fs-(i-1)) # ypologismos anakataskevis
endfor

# anakataskevasmeno diagramma
figure;plot(t,xrec); grid; axis([0 3 -2.5 2.5]);
xlabel("t(s)"); ylabel("x(t) recreated from x1(t)")

# d.

err = abs(xrec - xt) # calculate error

# e.

figure; # new window

# arxiko sima - sima deigmatolipsias diagramma
subplot(3,1,1);
plot(t,xt, "r"); hold on; stem(t1,x1t,"fill");
grid; axis([0 3 -2 2]); xlabel("t(s)"); title("a.");

# arxiko sima - anakataskevasmeno sima diagramma
subplot(3,1,2);
plot(t,xt, "r"); hold on; plot(t,xrec);
grid; axis([0 3 -2.5 2.5]); xlabel("t(s)"); title("b.");

# error diagramma
subplot(3,1,3);
plot(t,err);
grid; axis([0 3 -0.5 0.5]); xlabel("t(s)"); ylabel("error"); title("c.");

##########################
##########################

# b.
#Ts = 0.5 ara fs = 1 / Ts = 1/0.5 = 2Hz

Ts = 0.5; # sampling period
fs2 = 1/Ts; # sampling freq
t2 = [0:1/fs2:3] # Axonas xronou me fs

x2t = 2*cos((2*pi.*t2)+(pi/4));

# kai ta dyo mazi se ena diagramma
# thn x1t thn evala se scatter gia na fainontai ta diakrita
# shmeia pou apoteloun to sima
figure; plot(t,xt, "r"); hold on; scatter(t2, x2t, "fill");
axis([0 3 -2 2]); grid; xlabel("t(s)");
ylabel("x(t) - red\nx2(t) - blue");

# c.
xrec = zeros(size(t))

for i = 1:length(x2t)
  xrec = xrec + x2t(i).*sinc(t*fs2-(i-1)) # ypologismos anakataskevis
endfor

# anakataskevasmeno diagramma
figure;plot(t,xrec); grid;
xlabel("t(s)"); ylabel("x(t) recreated from x2(t)")

# d.

err = abs(xrec - xt) # calculate error

# e.

figure; # new window

# arxiko sima - sima deigmatolipsias diagramma
subplot(3,1,1);
plot(t,xt, "r"); hold on; stem(t2,x2t,"fill");
grid; xlabel("t(s)"); title("a.");

# arxiko sima - anakataskevasmeno sima diagramma
subplot(3,1,2);
plot(t,xt, "r"); hold on; plot(t,xrec);
grid; xlabel("t(s)"); title("b.");

# error diagramma
subplot(3,1,3);
plot(t,err);
grid; xlabel("t(s)"); ylabel("error"); title("c.");

##########################
##########################

# b.
#Ts = 1 ara fs = 1 / Ts = 1/1 = 1Hz

Ts = 1; # sampling period
fs3 = 1/Ts; # sampling freq
t3 = [0:1/fs3:3] # Axonas xronou me fs

x3t = 2*cos((2*pi.*t3)+(pi/4));

# kai ta dyo mazi se ena diagramma
# thn x1t thn evala se scatter gia na fainontai ta diakrita
# shmeia pou apoteloun to sima
figure; plot(t,xt, "r"); hold on; scatter(t3, x3t, "fill");
axis([0 3 -2 2]); grid; xlabel("t(s)");
ylabel("x(t) - red\nx3(t) - blue");

# c.
xrec = zeros(size(t))

for i = 1:length(x3t)
  xrec = xrec + x3t(i).*sinc(t*fs3-(i-1)) # ypologismos anakataskevis
endfor

# anakataskevasmeno diagramma
figure;plot(t,xrec); grid;
xlabel("t(s)"); ylabel("x(t) recreated from x3(t)")

# d.

err = abs(xrec - xt) # calculate error

# e.

figure; # new window

# arxiko sima - sima deigmatolipsias diagramma
subplot(3,1,1);
plot(t,xt, "r"); hold on; stem(t3,x3t,"fill");
grid; xlabel("t(s)"); title("a.");

# arxiko sima - anakataskevasmeno sima diagramma
subplot(3,1,2);
plot(t,xt, "r"); hold on; plot(t,xrec);
grid; xlabel("t(s)"); title("b.");

# error diagramma
subplot(3,1,3);
plot(t,err);
grid; xlabel("t(s)"); ylabel("error"); title("c.");
