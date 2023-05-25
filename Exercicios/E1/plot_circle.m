function plot_circle(x,y)

  % Definir parâmetros do círculo
  th = linspace(0, pi/2, 100); % ângulos de 0 a pi/2
  x_c = cos(th);
  y_c = sin(th);

  % Plotar o gráfico circular
  figure;
  plot(x_c, y_c, 'b'); % plotar os pontos (x_c, y_c) na cor azul ('b')
  hold on;
  axis equal; % ajustar a escala dos eixos para que o círculo seja circular
  
  for i=1:numel(x)
    if(x(i)^2 + y(i)^2 <=1)
      plot(x(i), y(i), 'ro');
    end
  end
    

  % Adicionar rótulo ao gráfico
  title('Gráfico Circular');
  xlabel('Eixo X');
  ylabel('Eixo Y');


end