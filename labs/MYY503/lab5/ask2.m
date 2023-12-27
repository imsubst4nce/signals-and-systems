#        #
 # # # #
  #Lab5#
  # # # #
 #       #

############################################
# Askisi - Metasximatismoi Fourier b meros #
############################################

# A.
M = 4;


fm = [-8:8];

w = zeros(size(fm));
w = 2*pi*fm;

x1 = zeros(1,M);
x2 = ones(1,2*M+1);
x3 = zeros(1,M);

X = [x1 x2 x3];

# B.
fs = [-3*pi:0.01:3*pi]
w = zeros(size(fs));
w = 2*pi*fs;

X_fourier = sin(((2*M+1).*w)/2)./sin(w./2);
X_fourier_abs = abs(X_fourier);
X_fourier_angle = angle(X_fourier);

# C.

figure;
subplot(4, 1, 1)
stem(fm,X, 'fill'); grid; axis([-8 8 0 1]);
xlabel("n"); ylabel("X"); title("Tetragonikos");
set(gca, "linewidth", 1, "fontsize", 14);

subplot(4, 1, 2)
plot(fs, X_fourier); grid; axis([-3 3]);
xlabel("n"); ylabel("Xexp(jw)"); title("Metasximatismos Fourier");
set(gca, "linewidth", 1, "fontsize", 14);

subplot(4, 1, 3)
plot(fs,X_fourier_abs); grid; axis([-3 3]);
xlabel("n"); ylabel("|X|"); title("Fasma platous");
set(gca, "linewidth", 1, "fontsize", 14);

subplot(4, 1, 4)
plot(fs,X_fourier_angle); grid; axis([-3 3]);
xlabel("n"); ylabel("<X"); title("Fasma sixnotitas");
set(gca, "linewidth", 1, "fontsize", 14);

# wait for exit
waitforbuttonpress
close('all')
