function [Pi] = MonteCarlo_arr(n)
  x = rand(1,n)
  y = rand(1,n)
  
  r = arrayfun(@raio(x,y), x, y); 
  
  
end



function R = raio(x,y)
  
  R = x.^2 + y.^2;
  R = R<1;
  
  
 end
 