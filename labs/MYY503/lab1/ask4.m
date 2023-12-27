#        #
 # # # #
  #Lab1#
  # # # #
 #       #

#####################################
# Askisi 4  - Grafikes Parastaseis  #
#####################################

# arxiko grafhma
#t = -1:0.01:1
#y = 2*sin(5*pi*t)
#h = plot(t,y)
#grid
#title("Sinimitonoeides")
#xlabel("time(sec)")
#ylabel("y(t)")
#saveas(h, "sin_graph.png")

# a. x(t) = exp(t+2), t∈[−5, 5]
t = -5:0.01:5
y = exp(t+2)
plot(t,y)
grid
title("Exp(t+2)")
xlabel("time(sec)")
ylabel("y(t)")



# b. x(t) = cos(2πt) + 3cos(10π), t∈[−3, 3]
t = -3:0.01:3
y = cos(2*pi*t) + 3*cos(10*pi)
plot(t,y)
grid
title("Cos-like function")
xlabel("time(sec)")
ylabel("y(t)")

# c. x(t) = t^2 + 3t + 2, t∈[−10, 10]
t = -10:0.01:10
y = t.^2 + 3*t + 2
plot(t,y)
grid
title("2nd degree polynomial")
xlabel("time(sec)")
ylabel("y(t)")

# d. x(t) = [sqrt(1-cos(t))+sqrt(cos(t))]^2, t∈[−10, 10]
t = -10:0.01:10
y = (sqrt(1-cos(t))+sqrt(cos(t))).^2
plot(t,y)
grid
title("2nd Cos-like function")
xlabel("time(sec)")
ylabel("y(t)")

