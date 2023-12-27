#        #
 # # # #
  #Lab2#
  # # # #
 #       #

#############################################
# Askisi 4  - Ypologismos Energeias Simatos #
#############################################

pkg load symbolic

# Na ypologisw thn energeia tou simatos x(t) = exp(-abs(t))

# a. arithmitikos ypologismos

Dt = 0.1
t = Dt:Dt:100

x = exp(-abs(t));
x_power = x.^2;

res = Dt*sum(x_power)

# b. symvolikos ypologismos

syms t1;

x = exp(-abs(t1));
x_power = x.^2;

res = int(x_power, t1, -inf, inf)


