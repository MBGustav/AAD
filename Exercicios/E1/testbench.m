
n = 1

tic;
pp = MonteCarlo_p(n);
time_s = toc;

time_s


tic;
ps = MonteCarlo_s(n);
time_p = toc;
time_p

tic;
p_arr = MonteCarlo_arr(n);
time_arr = toc;