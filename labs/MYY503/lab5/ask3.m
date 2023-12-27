#        #
 # # # #
  #Lab5#
  # # # #
 #       #

############################################
# Askisi - Metasximatismoi Fourier c meros #
############################################

pkg load symbolic;

# A.
t = [-5:9];

x1 = zeros(1, length(t(t<0)));
x2 = ones(1,5);
x3 = zeros(1, length(t(t>=5)));

x = [x1 x2 x3];

figure;
stem(t,x); grid;


# B.
syms w;

X_fourier = -(i.*(-1+exp(5.*i.*w)))./((sqrt(2.*pi)).*w);

# C.
fs = [-pi:0.01:pi];

X_fourier = zeros(size(fs));
X_fourier_abs = zeros(size(fs));
X_fourier_angle = zeros(size(fs));

X_fourier = -(i.*(exp(5.*i.*fs)-1))./((sqrt(2.*pi)).*fs);
X_fourier_abs = abs(X_fourier);
X_fourier_angle = angle(X_fourier);

figure;
plot(fs, X_fourier); grid;

figure;
subplot(2, 1, 1)
plot(fs, X_fourier_abs); grid;
xlabel("fs"); ylabel("|X|"); title("Fasma Platous");

subplot(2, 1, 2)
plot(fs, X_fourier_angle); grid;
xlabel("fs"); ylabel("<X"); title("Fasma Fashs");
