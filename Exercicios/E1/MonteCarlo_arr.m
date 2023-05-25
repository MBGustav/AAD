function [Pi] = MonteCarlo_arr(n)
  x = rand(1,n);
  y = rand(1,n);
  funct = @(x,y)  (x.^2 + y.^2);
  res = pararrayfun(nproc,funct, x,y);
  r = sum(res <=1);
  Pi = 4.0 * (r) / n
end



function R = sqrt_2d(x)
  R = x(1,:).^2 + x(2,:).^2
 end
 