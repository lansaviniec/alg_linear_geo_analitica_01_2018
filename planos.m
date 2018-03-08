clc;
close all;

_min = -5;
_max = 5;
espacamento = .1;

[x, y] = meshgrid(_min:espacamento:_max);

%modifique as equacoes abaixo para plotar outros planos
%------------------------------------------------------
z1 = 1 - x - y;   %equacao do plano x + y + z1 = 1
z2 = 1 - x + y;   %equacao do plano x - y + z2 = 1
%------------------------------------------------------

z_min = min([min(min(z1)) min(min(z2))])
z_max = max([max(max(z1)) max(max(z2))])

hold on
plot3 ([_min _max], [0 0], [0 0]);
plot3 ([0 0], [_min _max], [0 0]);
plot3 ([0 0], [0 0], [z_min z_max]);
mesh (x, y, z1);
mesh (x, y, z2);
hold off

ax = gca ();
set (ax, "view", [295, 20]);

xlabel ("x");
ylabel ("y");
zlabel ("z");
title ("Grafico de planos");