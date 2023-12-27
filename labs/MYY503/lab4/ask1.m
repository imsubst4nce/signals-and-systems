#        #
 # # # #
  #Lab4#
  # # # #
 #       #

######################################################
# Askisi - Metasximatismos Fourier shmatos energeias #
######################################################

# a.

# x(t) = exp(-a*t)*u(t), a>0 to sima
# X(f) = (1/(a+(j*2*pi*f))) o metasximatismos Fourier

f = [-40:40]; # freq range
a = 2;
Xf = (1./(a+(j.*2.*pi.*f)));

#plot abs
abs_Xf = abs(Xf)
figure;
plot(f, abs_Xf, "r"); grid; xlabel("f"); ylabel("Absolute X(f)"); title("Absolute of X(f) diagram")

#plot angle
angle_Xf = angle(Xf)
figure;
plot(f, angle_Xf, "b"); grid; xlabel("f"); ylabel("Angle X(f)"); title("Angle of X(f) diagram")

# b.

# y(t) = exp(a*t)*u(-t), a>0 to sima
# Y(f) = (1/(a-(j*2*pi*f))) o metasximatismos Fourier

f = [-40:40]; # freq range
a = 2;
Yf = (1./(a-(j.*2.*pi.*f)));

#plot abs
abs_Yf = abs(Yf)
figure;
plot(f, abs_Yf, "r"); grid; xlabel("f"); ylabel("Absolute Y(f)"); title("Absolute of Y(f) diagram");

#plot angle
angle_Yf = angle(Yf)
figure;
plot(f, angle_Yf, "b"); grid; xlabel("f"); ylabel("Angle Y(f)"); title("Angle of Y(f) diagram");

# c.

# Oi dyo metasximatismoi exoun idio metro alla
# antistrofh fash.
