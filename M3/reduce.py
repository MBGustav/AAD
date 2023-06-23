

import numpy as np
from mpi4py import MPI


def MonteCarlo(x, y):
    n = x.shape[0]
    total_acerto = 0
    for i in range(n):

        if x[i]**2 + y[i]**2 <= 1.0 :
            total_acerto +=1

    return float(total_acerto / n)


comm = MPI.COMM_WORLD

size = comm.Get_size()
rank = comm.Get_rank()

N = 1000000
'''Inicializa Vetor com N posicoes'''
x = np.random.rand((N//size))
y = np.random.rand((N//size))

half_pi = MonteCarlo(x,y)

soma = comm.reduce(half_pi, op=MPI.SUM, root=0)

if rank == 0:
    print("total de ranks = {}".format(size))
    print("Rank = {}".format(rank))
    print("Valor obtido de Pi = {:.8f}".format(soma))


