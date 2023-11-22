%% for trial 3
%% figure 1 plots the location where all variables was measured

figure(1)

tbl=readtable("trial3_co2.xlsx");
p=geoscatter(tbl,"lat","lon","filled");
p.SizeData=10;
p.ColorVariable="co2";
c=colorbar;
colormap cool;
c.Label.String="Concentration of CO_2(ppm)";'interpreter';'latex';
geobasemap streets

hold on

q=geoplot(32.98619433,-96.6347715,"r*","MarkerSize",10);  %% starting point

hold on

r=geoplot(32.996355,-96.62591917,"b*","MarkerSize",10);  %% ending point

legend([q r],["Start","End"],'Location','best')  %% adding the legend

hold on

str='Total datapoints=673'; %% adding a textbox
dim = [.54 .150 .3 .3];
annotation('textbox',dim,'String',str,'FitBoxToText','on','BackgroundColor','white')

title('Trial 3, Jun 10 2021', 'interpreter','latex')







