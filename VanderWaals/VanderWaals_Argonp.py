import numpy as np
import matplotlib
a = 1.363
b = 0.03219
R = 0.08121
T = [50,75,100,150,200]
V = [0.060,0.075,0.1,0.175,0.2]
for i in len(range(V)):

    fac1 = R/(V[i]-b)
    fac2 = a/(V[i]**2)
P  = [-232.6025,-159.5982,-86.5939,59.4148,205.4234]
'''P(1,:) = T[1]*fac1-fac2
P(2,:) = T[2]*fac1-fac2
P(3,:) = T[3]*fac1-fac2
P(4,:) = T[4]*fac1-fac2
P(5,:) = T[5]*fac1-fac2'''
plot(V,P)
print(P)