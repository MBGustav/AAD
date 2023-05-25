function Pi = MonteCarlo_s(n)
  
  total_acerto = 0;
  for k=1:n+1
      x = rand;
      y = rand;
      if(x*x + y*y  < 1.0)
        total_acerto = total_acerto + 1;
      end
    
  end
  
  Pi = 4.0 * total_acerto / n ;
  
end