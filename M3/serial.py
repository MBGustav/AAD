
import numpy as np
N = 1000000


def MonteCarlo(x, y):
    n = x.shape[0]
    total_acerto = 0
    for i in range(n):

        if x[i]**2 + y[i]**2 <= 1.0 :
            total_acerto +=1

    return float(total_acerto / n)

x = np.random.rand((N))
y = np.random.rand((N))

print("Resultado de pi: {:.10f}".format(4.0*MonteCarlo(x,y)))
