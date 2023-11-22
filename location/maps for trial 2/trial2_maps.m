%% for trial 2
%% figure 1 plots the location where all variables was measured

figure(1)

tbl=readtable("trial2_co2.xlsx");
p=geoscatter(tbl,"lat","lon","filled");
p.SizeData=10;
p.ColorVariable="co2";
c=colorbar;
colormap cool;
c.Label.String="Concentration of CO_2(ppm)";'interpreter';'latex';
geobasemap streets

hold on

q=geoplot(32.9963535,-96.62589883,"k*","MarkerSize",10); %% starting point

hold on

r=geoplot(32.9962475,-96.62624633,"r*","MarkerSize",10); %% end point

legend([q r],["Start","End"],'Location','best') %% adding the legend

hold on

xa=[.75 .71];  %% adding an arrow to indicate the direction of travel
ya=[.66 .71];
annotation('arrow',xa,ya)

hold on

str='Total datapoints=696';  %% lets add a text box
dim = [.50 .28 .3 .3];
annotation('textbox',dim,'String',str,'FitBoxToText','on','BackgroundColor','white')

title('Trial 2, Jun 9 2021', 'interpreter','latex')









