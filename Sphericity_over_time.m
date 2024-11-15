% DAY 7 CONDITIONS
Q50_room7 = [163.5 748.9];
Q50_dry7 = [175.8 761.4];
Q50_moist7 = [201.5	742.7];
Q50_freezer7 = [174.3	727.8];

SPHT_room7 = [0.77 0.634];
SPHT_dry7 = [0.761 0.648];
SPHT_moist7 = [0.743 0.655];
SPHT_freezer7 = [0.759	0.658];

% DAY 14 CONDITIONS
Q50_room14 = [169 670.3];
Q50_dry14 = [166. 754.8];
Q50_moist14 = [338. 880.8];
Q50_freezer14 = [167. 735.3];

SPHT_room14 = [0.765 0.681];
SPHT_dry14 = [0.759	0.656];
SPHT_moist14 = [0.639 0.636];
SPHT_freezer14 = [0.759	0.651];

% DAY 21 CONDITIONS
Q50_room21 = [172.5 663.5];
Q50_dry21 = [180.8 705.4];
Q50_moist21 = [515.1 1033.8];
Q50_freezer21 = [172.4 757.9];
			
SPHT_room21 = [0.761 0.669];
SPHT_dry21 = [0.748	0.676];
SPHT_moist21 = [0.577 0.572];
SPHT_freezer21 = [0.762	0.647];

% DAY 28 CONDITIONS
Q50_room28 = [168.1	782.4];
Q50_dry28 = [162.6	638.1];
Q50_moist28 = [382.1 1331.5];
Q50_freezer28 = [167.4	746.9];
			
SPHT_room28 = [0.757 0.619];
SPHT_dry28 = [0.762	0.686];
SPHT_moist28 = [0.622 0.538];
SPHT_freezer28 = [0.763	0.624];

% GRAPHING
t = tiledlayout(4,1,"TileSpacing","none");
xlabel(t,'Median particle size (µm)')
ylabel(t,'Sphericity')

nexttile
scatter(Q50_room28,SPHT_room28,20,"black")
hold on
scatter(Q50_dry28,SPHT_dry28,20,"red")
hold on 
scatter(Q50_moist28,SPHT_moist28,20,"blue")
hold on
scatter(Q50_freezer28,SPHT_freezer28,20,"green")
hold off
xlim([0 1400])
ylim([0.500 0.900])
xticks([])
yticks([0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9])
ylabel({ ...
    ['Day 28'] ...
    })
nexttile
scatter(Q50_room21,SPHT_room21,20,"black")
hold on
scatter(Q50_dry21,SPHT_dry21,20,"red")
hold on 
scatter(Q50_moist21,SPHT_moist21,20,"blue")
hold on
scatter(Q50_freezer21,SPHT_freezer21,20,"green")
hold off
xlim([0 1400])
ylim([0.500 0.900])
xticks([])
yticks([0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9])
ylabel({ ...
    ['Day 21'] ...
    })
nexttile
scatter(Q50_room14,SPHT_room14,20,"black")
hold on
scatter(Q50_dry14,SPHT_dry14,20,"red")
hold on 
scatter(Q50_moist14,SPHT_moist14,20,"blue")
hold on
scatter(Q50_freezer14,SPHT_freezer14,20,"green")
hold off
xlim([0 1400])
ylim([0.500 0.900])
xticks([])
yticks([0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9])
ylabel({ ...
    ['Day 14'] ...
    })
nexttile
scatter(Q50_room7,SPHT_room7,20,"black")
hold on
scatter(Q50_dry7,SPHT_dry7,20,"red")
hold on 
scatter(Q50_moist7,SPHT_moist7,20,"blue")
hold on
scatter(Q50_freezer7,SPHT_freezer7,20,"green")
hold off
xlim([0 1400])
ylim([0.500 0.900])
xticks([0, 200, 400, 600, 800, 1000 1200 1400])
yticks([0.5 0.55 0.6 0.65 0.7 0.75 0.8 0.85 0.9])
ylabel({ ...
    ['Day 7'] ...
    })
legend('Room','Dry','Moist','Freezer')
legend show