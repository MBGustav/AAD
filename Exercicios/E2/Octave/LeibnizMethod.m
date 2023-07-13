function [Pi] = LeibnizMethod(num_elem)
   
   
   den = 2*(0:num_elem) + 1;
   num = (-1).^(0:num_elem);
  
  Pi = 4*sum(num./den);
  end