Days = [7 14 21 28];

Room_coarse = [2.28	4.60	4.40	4.53];
Dry_coarse = [2.45	2.23	3.83	3.93];
Moist_coarse = [5.58	9.65	10.93	12.53];
Frozen_coarse = [2.73	2.78	2.93	3.05];

Room_fine = [3.48	3.73	4.63	4.70];
Dry_fine = [3.53	3.15	3.88	4.13];
Moist_fine = [6.18	11.30	12.15	13.15];
Frozen_fine = [3.23	2.73	3.03	3.10];

t = tiledlayout(2,1,"TileSpacing","none");
xlabel(t,'Days')
ylabel(t,'Moisture Content (%)')

nexttile
scatter(Days,Room_fine)
hold on
scatter(Days,Dry_fine)
hold on
scatter(Days,Moist_fine)
hold on
scatter(Days,Frozen_fine)
hold off
% hold on 
% errorbar(Days,Room_fine,0.05,'vertical','LineStyle','none')
% hold on
% errorbar(Days,Dry_fine,0.05,'vertical','LineStyle','none')
% hold on
% errorbar(Days,Moist_fine,0.05,'vertical','LineStyle','none')
% hold on
% errorbar(Days,Frozen_fine,0.05,'vertical','LineStyle','none')
% hold off
ylim([0 14])
xlim([0 30])
yticks([0 2.5 5.0 7.5 10.0 12.5])
xticks([])
nexttile
scatter(Days,Room_coarse)
hold on
scatter(Days,Dry_coarse)
hold on
scatter(Days,Moist_coarse)
hold on
scatter(Days,Frozen_coarse)
hold off
legend('Room','Dry','Moist','Frozen','Location','southoutside','Orientation','horizontal')
legend show
% hold on
% errorbar(Days,Room_coarse,0.05,'vertical','LineStyle','none')
% hold on
% errorbar(Days,Dry_coarse,0.05,'vertical','LineStyle','none')
% hold on
% errorbar(Days,Moist_coarse,0.05,'vertical','LineStyle','none')
% hold on
% errorbar(Days,Frozen_coarse,0.05,'vertical','LineStyle','none')
% hold off
ylim([0 14])
xlim([0 30])
yticks([0 2.5 5.0 7.5 10.0 12.5])
xticks([7 14 21 28])
