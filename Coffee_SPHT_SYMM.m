%AP DATA
AP_50 = [
190.7
258.2
322.2
407.7
519.7
629.8
726.7
855.4
979.7];
AP_SPHT3 = [
0.763
0.743
0.77
0.769
0.757
0.753
0.748
0.736
0.722];
AP_SYMM3 = [
0.862
0.858
0.87
0.871
0.87
0.871
0.87
0.867
0.864];
%BG DATA
BG_50 = [
210.8
336.9
417.3
489.4
612
735.8
824
936.1
1072.1];
BG_SPHT3 = [
0.777
0.745
0.754
0.761
0.741
0.732
0.72
0.716
0.705];
BG_SYMM3 = [
0.866
0.859
0.865
0.869
0.867
0.865
0.863
0.862
0.861];
%M Data
M_50 = [41.3
25.2
333.4
405.2
487.2
558.5
632.3
720
810.8
881.5];
M_SPHT3 = [0.76
0.744
0.748
0.745
0.749
0.74
0.736
0.737
0.73
0.73];
M_SYMM3 = [0.856
0.858
0.863
0.864
0.868
0.867
0.868
0.869
0.868
0.869];

%FO Data
FO_50=[
476.2
534.5
577.5
643.5
730.7
801.2
919.4
1026.4
1109.8
1180];

FO_SPHT3=[
0.663
0.702
0.722
0.728
0.717
0.714
0.706
0.707
0.702
0.7];

FO_SYMM3 = [
0.835
0.853
0.86
0.862
0.862
0.861
0.861
0.861
0.858
0.86];

%General Graph info
figure
t = tiledlayout(4,1,"TileSpacing","none");
title(t,'Grind Size Shape, Brazil Cerrado City+ (-13.4%)')
xlabel(t,'Median particle size (µm)')
ylabel(t,'%')
%M
nexttile
scatter(M_50,M_SYMM3,20,"black","filled")
hold on
scatter(M_50,M_SPHT3,20,"black",'d')
hold off
xlim([0 1000])
ylim([0.62 0.9])
xticks([])
yticks([0.7 0.8])
ylabel({ ...
    ['Mahlkonig '] ...
    ['Guatemala'] ...
    })
%FO
nexttile
scatter(FO_50,FO_SYMM3,20,"black","filled")
hold on
scatter(FO_50,FO_SPHT3,20,"black",'d')
hold off
xlim([0 1000])
ylim([0.62 0.9])
xticks([])
yticks([0.7 0.8])
ylabel({ ...
    ['Fellow'] ...
    ['Ode 2'] ...
    })
%BG
nexttile
scatter(BG_50,BG_SYMM3,20,"black","filled")
hold on
scatter(BG_50,BG_SPHT3,20,"black",'d')
hold off
xlim([0 1000])
ylim([0.62 0.9])
xticks([])
yticks([0.7 0.8])
ylabel({ ...
    ['Baratza'] ...
    ['Forte BG'] ...
    })
%AP
nexttile
scatter(AP_50,AP_SYMM3,20,"black","filled")
hold on
scatter(AP_50,AP_SPHT3,20,"black",'d')
hold off
legend('Symmetry','Spherocity','Location','southoutside','Orientation','horizontal')
xlim([0 1000])
ylim([0.62 0.9])
yticks([0.7 0.8])
ylabel({ ...
    ['Baratza'] ...
    ['Forte AP'] ...
    })