clear all;

journal_plot_params;

phim = 5;

phi = linspace(-5,5,200);
V = phi.^2 - log(cosh(4*phi));

setFigure('name');

plot(phi, V, 'COLOR', 'blue');


X = [0 0];
Y = [-]


hAx = gca;

set(hAx, 'Units', 'normalized');
set(hAx, 'LineWidth', alw);
set(hAx, 'FontUnits','points');
set(hAx, 'FontWeight','normal');
set(hAx, 'FontSize', fsz);
set(hAx, 'FontName', f_name);

xTickLabel off

xlabel(hAx,'$\phi$','Interpreter','LaTeX',...
    'FontSize', 10);

ylabel(hAx,'$V_k(\phi)$','Interpreter','LaTeX',...
    'FontSize', 10);