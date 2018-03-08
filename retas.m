clc;
close all

x_min = -10;
x_max = 10;
espacamento = 0.025;

x = x_min:espacamento:x_max;   %intervalo do eixo x -> (x_min):(espacamento dos pontos):(x_max)

%modifique as equacoes abaixo para plotar outras retas
%------------------------------------------------------
y1 = 4 - 0.5*x;     %equacao da reta1 x + 2y = 8
y2 = (3/4)*x - 1;   %equacao da reta2 3x -4y = 4
%------------------------------------------------------

y_min = min([y1 y2]);
y_max = max([y1 y2]);


%grid off
hold on
plot(x,y1)  %plota a reta 1 
plot(x,y2)  %plota a reta 2
plot([x_min x_max],[0 0],'-k','linewidth',1);
plot([0 0], [y_min y_max],'-k','linewidth',1);
hold off

axis ([x_min x_max y_min y_max]);
xlabel ("x");
ylabel ("y");
title ("Grafico de retas");
