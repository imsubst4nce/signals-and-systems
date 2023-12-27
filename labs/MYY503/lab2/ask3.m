#        #
 # # # #
  #Lab2#
  # # # #
 #       #

#################################################
# Askisi 3  - Apokrisi synexous mesw sineliksis #
#################################################

# a.
tx = [1:0.01:5] # x-axis of x(t)
x = ones(1, length(tx))

th = [1:0.01:3] # x-axis of h(t)
h = ones(1, length(th))


subplot(2,1,1)
plot(tx, x)
title("x(t) = u(t-1) - u(t-5)")
xlabel("t")
ylabel("x(t)")
grid
axis([1,5])


subplot(2,1,2)
plot(th, h)
title("h(t) = u(t-1) - u(t-3)")
xlabel("t")
ylabel("h(t)")
grid
axis([1,3])

# b. conv y(t) = x(t)*h(t)
t = [2:0.01:8]
y = 0.01*conv(x,h)

figure(2)
plot(t, y)
title("y(t) = x(t)*h(t)")
xlabel("t")
ylabel("y(t)")
grid
axis([2,8])

# c. conv z(t) = y(t)*h(t)
t = [3:0.01:11]
z = 0.01*conv(y,h)

figure(3)
plot(t, z)
title("z(t) = y(t)*h(t)")
xlabel("t")
ylabel("z(t)")
grid
axis([3,11])
