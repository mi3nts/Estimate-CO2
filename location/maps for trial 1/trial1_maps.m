%% for trial 1
%% figure 1 plots the location where all variables was measured

figure(1)

tbl=readtable("trial1_co2.xlsx");
p=geoscatter(tbl,"lat","lon","filled");
p.SizeData=10;
p.ColorVariable="co2";
c=colorbar;
colormap cool;
c.Label.String="Concentration of CO_2(ppm)";'interpreter';'latex';
geobasemap streets

hold on

q=geoplot(32.98621717,-96.63477117,"r*","MarkerSize",10); %% this is the starting point

hold on

r=geoplot(32.9961925,-96.62554267,"b*","MarkerSize",10); %% this is the ending point

legend([q r],["Start","End"],'Location','best')  %% adding the legend

hold on

str='Total datapoints=710'; %% lets add a textbox
dim = [.54 .150 .3 .3];
annotation('textbox',dim,'String',str,'FitBoxToText','on','BackgroundColor','white')


title(' Trial 1, Jun 9 2021', 'interpreter','latex')








