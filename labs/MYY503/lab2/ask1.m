#        #
 # # # #
  #Lab2#
  # # # #
 #       #

############################################################
# Askisi 1  - Anaparastasi Synexous kai Diakritou Simatos  #
############################################################

# a. 𝑥(𝑡) = 𝑠𝑖𝑛((𝜋/4)*𝑡) + 𝑐𝑜𝑠((5𝜋/4)*𝑡) - sinexous xronou vazw mikro vima 0.01

t = [0:0.01:6*pi] # x-axis
y = sin((pi/4).*t) + cos(((5*pi)/4).*t) # y-axis

plot(t,y)
grid

# b. 𝑥[𝑛] = cos((pi/20)*n) - diakritou xronou xrisi tis entolis stem

n  = [0:40] # x-axis
y = cos((pi/20).*n) # y-axis

stem(n,y, "r") # plot with stem for discrete functions
