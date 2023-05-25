clc all 
close all
pkg load parallel


n = 100

tic;
[x_c, y_c, pp] = MonteCarlo_p(n);
time_s = toc;

tic;
ps = MonteCarlo_s(n);
time_p = toc;

tic;
p_arr = MonteCarlo_arr(n);
time_arr = toc;

printf("Pi MonteCarlo_s:  %f \n",ps);
printf("Pi MonteCarlo_p:  %f \n", pp);
printf("Pi MonteCarlo_arr:%f \n", p_arr);

printf("serial_time: %f\n", time_s);
printf("parallel_time_v1: %f\n", time_p);
printf("parallel_time_v2: %f\n", time_arr);

%limitacao de pontos para apresentacao por conta de processamento
if(n<=100)
  plot_circle(x_c, y_c)
end