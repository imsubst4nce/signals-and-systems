#        #
 # # # #
  #Lab2#
  # # # #
 #       #

#####################################
# Askisi 2  - Symvolikes Metavlites #
#####################################

pkg load symbolic # will run once

# a. meros prwto

syms t # thetei symbolic metavliti pou den pairnei apariatita times
u(t) = heaviside(t) # for later use

subplot(3,1,1)
x(t) = exp(-t)*u(t)
ezplot(t,xt) # x(t)
title("x(t) = e^(-t)*u(t)")
xlabel("t")
ylabel("x(t)")
grid
axis([-4 4 -1 1])

subplot(3,1,2)
y1(t) = x(-t)
ezplot(t,y1(t)) # y1(t) = x(-t)
title("y1(t) = exp(t)*u(-t)")
xlabel("t")
ylabel("y1(t)")
grid
axis([-4 4 -1 1])

subplot(3,1,3)
y2(t) = x(1-t)
ezplot(t,y2(t)) # y1(t) = x(1-t)
title("y2(t) = exp(1+t)*u(1-t)")
xlabel("t")
ylabel("y2(t)")
grid
axis([-4 4 -1 1])

# b. meros deftero
x(t) = u(t-2) - u(t-5)

figure(2) # new window
ezplot(t, x(t))
title("x(t) = u(t-2)-u(t-5)")
xlabel("t")
ylabel("x(t)")
grid
axis([0 6 -0.5 1.5])

