#        #
 # # # #
  #Lab6#
  # # # #
 #       #

#########################################
# Askisi - Filtro kinoumenou mesou orou #
#########################################

n = 0:1:100; # diastima
N = 3;

sn = 3*cos(((pi*n)/5)+(pi/2)); # katharo sima
en = randn(1,length(n)); # thorivos
xn = sn + en; #diavrwmeno sima


yn(1) = xn(1);
yn(2) = (1/3)*(xn(2-0)+xn(2-1));
for i = 3:1:101
    yn(i) = 1/N*(xn(i-0)+xn(i-1)+xn(i-2));# filtro
endfor


#########
# plots #
#########
figure;
subplot(4,1,1)
stem(n, sn, "b", 'fill');grid; xlabel("n"); ylabel("s[n]");
title("Katharo sima s[n]");
set(gca, "linewidth", 1, "fontsize", 14, "fontweight", "bold");

subplot(4,1,2)
stem(n, en, "r", 'fill');grid; xlabel("n"); ylabel("e[n]");
title("Sima thorivou e[n]");
set(gca, "linewidth", 1, "fontsize", 14, "fontweight", "bold");

subplot(4,1,3)
stem(n, xn, "g", 'fill');grid; xlabel("n"); ylabel("x[n]");
title("Diavrwmeno sima x[n]");
set(gca, "linewidth", 1, "fontsize", 14, "fontweight", "bold");

subplot(4,1,4)
stem(n, yn, "k", 'fill');grid; xlabel("n"); ylabel("y[n]");
title("Filtro y[n]");
set(gca, "linewidth", 1, "fontsize", 14, "fontweight", "bold");

# close windows
waitforbuttonpress
close("all")
