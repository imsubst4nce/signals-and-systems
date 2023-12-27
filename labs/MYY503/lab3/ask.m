#        #
 # # # #
  #Lab3#
  # # # #
 #       #

#############################################################
# Askisi - Trigwnometrikh seira Fourier kai Fainomeno Gibbs #
#############################################################


# a.

t = [0:0.001:1];

t1 = t(t >= 0 & t <= 0.5); # ones
t2 = t(t > 0.5 & t <= 1); # -ones

x1 = ones(1, length(t1));
x2 = (-1)*ones(1, length(t2));

x = [x1 x2]; # x(t)

plot(t,x); grid; axis([0 1 -2 2]); title("Periodiko Sima Fourier"); xlabel("t"); ylabel("x(t)")

# b.
k = [-50:50];

xk = (1./(j.*pi.*k)).*(1-exp((-j).*pi.*k));

for i = 1:length(xk)
  metro(i) = abs(xk(i));
  fash(i) = angle(xk(i));
endfor

figure(2)
stem(k+51, metro, "r"); grid; xlabel("Metro"); ylabel("k");


figure(3)
stem(k+51,fash, "p"); grid; xlabel("Fash"); ylabel("k")

# c.
#Mhn dineis shmasia edw#
# P_olikh = 1/2*{olokliroma apo -1 mexri 1 tou |x(t)|^2} = 1/2
# T = 1;

P_olikh = 1/2 # olikh isxys
A = 1 # amplitude tou simatos
k = [-50:50]; # times deikti syntelestwn
x0 = 0; # x0 dinetai
xk= (1./(j.*pi.*k)).*(1-exp((-j).*k.*pi)); # syntelestes xk
xk(51) = x0; # orizw kai to x0
p = sum(abs(xk).^2) # mesh isxys
f = (P_olikh/p)*100

# d.
t = [0:0.001:1]; # diastima proseggisis
k = [-50:50]

xt = zeros(1, length(t))

for k=-50:50 # syntelestes xkE[-50,50]
  if(k~=0)
    xt  = xt + (1./(j.*pi.*k)).*(1-exp((-j).*k.*pi)).*exp(j.*2.*k.*pi.*t)
  endif
endfor

#length(xt)

# e.
t = [0:0.001:1];

figure(4);
plot(t, xt, "r")
hold on
plot(t, x, "b")
axis([0 1 -2 2]); grid; xlabel("t"); ylabel("Proseggiseis - Arxiko"); title("Proseggiseis Fourier - Arxiko Sima")


