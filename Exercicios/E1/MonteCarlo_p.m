function [x,y, Pi] = MonteCarlo_p(n)
  
  total_acerto = 0;
  x = rand(1, n);
  y = rand(1, n);
  
 r = x.^2 + y.^2;
 total_acerto = sum(r <= 1); 
  
  Pi = 4.0 * total_acerto / n ;

  
end