clear all;


journal_plot_params;
setFigure_bis('Ma figure');

x = linspace(0,4,200);

y = (x.^2).*exp(x.^2)./(exp(x.^2/0.5)-1);
Rlim = [0, 0.55];




p = patch('vertices', [0, 0; 0, 0.55; 3, 0.55; 3, 0], ...
          'faces', [1, 2, 3, 4], ...
          'FaceColor', line_color_2, ...
          'FaceAlpha', 0.2);
set(p, 'EdgeColor', 'none');
hold on 
plot(x, y,'LineWidth', 1.5);


journal_axis(gca, '$q$', '$\partial_t \mathcal{R}_k(q)$');
xticks(gca, 0);
yticks(gca, {});
ylim(Rlim); 

xlabh = get(gca,'XLabel');
set(xlabh,'Position',get(xlabh,'Position') + [+1.8 +0.05 0])

ylabh = get(gca,'YLabel');
set(ylabh,'Position',get(ylabh,'Position') + [+0 0 0])


% dim = [0.2 0.2 0.3 0.3];
% t_fsz = 10;
% h_ann_a = annotation('textbox',dim,'String','$\sim k^2$','FitBoxToText','on');
% set(h_ann_a, 'Units', 'normalized');
% set(h_ann_a, 'EdgeColor', 'none');
% set(h_ann_a, 'FontSize', t_fsz);
% set(h_ann_a, 'Interpreter', 'latex');
% set(h_ann_a, 'Position', [0.01 0.95 0 0]);

dim = [0.2 0.2 0.3 0.3];
t_fsz = 10;
h_ann_b = annotation('textbox',dim,'String','$k$','FitBoxToText','on');
set(h_ann_b, 'Units', 'normalized');
set(h_ann_b, 'EdgeColor', 'none');
set(h_ann_b, 'FontSize', t_fsz);
set(h_ann_b, 'Interpreter', 'latex');
set(h_ann_b, 'Position', [0.32 0.2 0 0]);