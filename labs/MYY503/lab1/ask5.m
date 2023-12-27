#        #
 # # # #
  #Lab1#
  # # # #
 #       #

############################################
# Askisi 5  - Logiki Prosvasi se stoixeia  #
############################################
t = linspace(0,200,20000)

t1 = t(t<20) # 0 <= t < 20
t2 = t(t >= 20 & t < 80) # 20 <= t < 80
t3 = t(t >= 80) # 80 <= t

g1 = -5*ones(1,length(t1))
g2 = t2.*(0.25*cos(2*pi*0.1*t2))
g3 = 36 - (t3/5)

g = [g1,g2,g3]

plot(t,g)
grid
title("diagramataki")
xlabel("t")
ylabel("g(t)")
