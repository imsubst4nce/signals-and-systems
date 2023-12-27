#        #
 # # # #
  #Lab6#
  # # # #
 #       #

##########################################
# Askisi - Filtro diaforwn prwtis taksis #
##########################################

# a.
n = [1:15]

xn = [5,6,7,6,5,4,4,10,10,10,8,8,7,6,0] # arxiko sima

yn = zeros(1,length(xn));

yn(1) = 0;
for i=2:length(xn)
  yn(i) = xn(i) - xn(i-1);
endfor

figure;
subplot(211)
stem(n, xn, "k", "fill"); grid;
xlabel("n", "fontweight", "bold");
ylabel("x[n]", "fontweight", "bold");
title("Arxiko sima - x[n]");
set(gca, "linewidth", 0.6, "fontsize", 18)

subplot(212)
stem(n, yn, "k", "fill"); grid;
xlabel("n", "fontweight", "bold");
ylabel("y[n]", "fontweight", "bold");
title("Filtro diaforwn - y[n]");
set(gca, "linewidth", 0.6, "fontsize", 18)

# b.
# w = [-pi:pi]
w = [-pi:0.01:pi]

theta = zeros(size(w));
hejw = zeros(size(w));

theta = atan(sin(w)./(1-cos(w)));
hejw = 2.*abs(sin(w./2)).*exp((-j).*theta);

hejw_abs = abs(hejw);
hejw_angle = angle(hejw);

figure;
subplot(211)
plot(w, hejw_abs, "k"); grid;
xlabel("w", "fontweight", "bold");
ylabel("|H|", "fontweight", "bold");
title("Metro |H|");
set(gca, "linewidth", 0.6, "fontsize", 18)

subplot(212)
plot(w, hejw_angle, "k"); grid;
xlabel("w", "fontweight", "bold");
ylabel("<H", "fontweight", "bold");
title("Fash <H");
set(gca, "linewidth", 0.6, "fontsize", 18)

# w = [-3*pi:3*pi]
w = [-3*pi:0.01:3*pi]

theta = zeros(size(w));
hejw = zeros(size(w));

theta = atan(sin(w)./(1-cos(w)));
hejw = 2.*abs(sin(w./2)).*exp((-j).*theta);

hejw_abs = abs(hejw);
hejw_angle = angle(hejw);

figure;
subplot(211)
plot(w, hejw_abs, "k"); grid;
xlabel("w", "fontweight", "bold");
ylabel("|H|", "fontweight", "bold");
title("Metro |H|");
set(gca, "linewidth", 0.6, "fontsize", 18)

subplot(212)
plot(w, hejw_angle, "k"); grid;
xlabel("w", "fontweight", "bold");
ylabel("<H", "fontweight", "bold");
title("Fash <H");
set(gca, "linewidth", 0.6, "fontsize", 18)

# close windows
waitforbuttonpress
close('all')

