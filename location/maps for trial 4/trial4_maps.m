%% for trial 4
%% figure 1 plots the location where all variables was measured

figure(1)

tbl=readtable("trial4_co2.xlsx");
p=geoscatter(tbl,"lat","lon","filled");
p.SizeData=10;
p.ColorVariable="co2";
c=colorbar;
colormap cool;
c.Label.String="Concentration of CO_2(ppm)";'interpreter';'latex';
geobasemap streets

hold on

q=geoplot(32.996352,-96.62588867,"k*","MarkerSize",10);  %% starting point

hold on

r=geoplot(32.99728367,-96.6281925,"g*","MarkerSize",10); %% ending point

legend([q r],["Start","End"],'Location','best')  %% adding a legend

hold on

xa=[.77 .72];  %% adding an arrow to indicate the intial direction of ride
ya=[.64 .70];
annotation('arrow',xa,ya)

str='Total datapoints=238';  %% adding a textbox
dim = [.50 .28 .3 .3];
annotation('textbox',dim,'String',str,'FitBoxToText','on','BackgroundColor','white')

title('Trial 4 Jun 10 2021', 'interpreter','latex')







