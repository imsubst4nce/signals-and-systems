#        #
 # # # #
  #Lab5#
  # # # #
 #       #

############################################
# Askisi - Metasximatismoi Fourier a meros #
############################################

## a. x[n] = (a^n)*u[n], |a| < 1
## Ginetai: X(exp(jω) = 1/(1-a*exp(-jω))

# perioxi sixnotitas
f = [-3*pi:0.01:3*pi];
w = 2*pi*f;


# a = 0.7, f = [-3*pi , 3*pi]
a = 0.7;
Xexpjw = zeros(size(w));
Xexpjw1_abs = zeros(size(w));
Xexpjw1_angle = zeros(size(w));

Xexpjw = 1./(1-a*exp(-j*w));
Xexpjw1_abs = abs(Xexpjw);
Xexpjw1_angle = angle(Xexpjw);

figure;
subplot(2, 1, 1);
plot(w,Xexpjw1_abs); grid;
xlabel('ω'); ylabel('|X1|');

subplot(2, 1, 2);
plot(w,Xexpjw1_angle); grid;
xlabel('ω'); ylabel('<X1');

# a = 1.7, f = [-3*pi , 3*pi]
a = 1.7;
Xexpjw = zeros(size(w));
Xexpjw2_abs = zeros(size(w));
Xexpjw2_angle = zeros(size(w));

Xexpjw = 1./(1-a*exp(-j*w));
Xexpjw2_abs = abs(Xexpjw);
Xexpjw2_angle = angle(Xexpjw);

figure;
subplot(2, 1, 1);
plot(w,Xexpjw2_abs); grid;
xlabel('ω'); ylabel('|X1|');

subplot(2, 1, 2);
plot(w,Xexpjw2_angle); grid;
xlabel('ω'); ylabel('<X1');

## b. x[n] = ((-a)^n)*u[-n-1], |a| > 1
# idia morfi twn sinartisewn
# gia thn X2 apla edw a>1

# close windows
waitforbuttonpress # close plots at any key press
close('all')

