
n_iter = [1e3; 1e4; 1e5; 1e6; 1e7];

Range = numel(n_iter);
time_MC = zeros(Range,1);
time_LB = zeros(Range,1);

for k=1:Range
  tic();
  [_, _, Pi_MC] = MonteCarlo_p(n_iter(k));
  time_MC(k) = toc()*1000;
  tic();
  Pi = LeibnizMethod(n_iter(k));
  time_LB(k) = toc()*1000;
endfor

csvwrite("benchMark_MonteCarlo.csv", [n_iter time_MC]);
csvwrite("benchMark_Leibniz.csv", [n_iter time_LB]);

