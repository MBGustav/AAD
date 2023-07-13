
n_iter = 100000; 

tic();
Pi_leibniz = LeibnizMethod(n_iter);
time_leibniz = toc();

tic();
[_, _, Pi_MC] = MonteCarlo_p(n_iter(k));
time_MC = toc();


printf("Tempo - LeibnizMethod: %.4f ms\n", time_leibniz*1000);
printf("Tempo - MonteCarlo_p: %.4f ms\n", time_MC*1000);

printf("Leibniz Pi   = %.5f\n", Pi_leibniz);
printf("MonteCarlo Pi= %.5f\n", Pi_MC);

printf(""); 
