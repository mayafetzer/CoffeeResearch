Q50 = [
160.2
190.7
210.8
253.2
258.2
322.2
333.4
336.9
405.2
407.7
417.3
487.2
489.4
519.7
534.5
558.5
577.5
612
629.8
632.3
643.5
720
726.7
730.7
735.8
801.2
810.8
824
855.4
881.5
919.4
936.1
979.7
1026.4
1072.1
1109.8
1180
];

SPHT3 = [
0.76
0.763
0.777
0.744
0.743
0.77
0.748
0.745
0.745
0.769
0.754
0.749
0.761
0.757
0.702
0.74
0.722
0.741
0.753
0.736
0.728
0.737
0.748
0.717
0.732
0.714
0.73
0.72
0.736
0.73
0.706
0.716
0.722
0.707
0.705
0.702
0.7
];

SYMM3 = [
0.856
0.862
0.866
0.858
0.858
0.87
0.863
0.859
0.864
0.871
0.865
0.868
0.869
0.87
0.853
0.867
0.86
0.867
0.871
0.868
0.862
0.869
0.87
0.862
0.865
0.861
0.868
0.863
0.867
0.869
0.861
0.862
0.864
0.861
0.861
0.858
0.86
];

meanQ50 = 629.454;
meanSPHT3 = 0.736;
meanSYMM3 = 0.864;
stdevQ50 = 278.427;
stdevSPHT3 = 0.021;
stdevSYMM3 = 0.005;

t = tiledlayout(2,1,"TileSpacing","none");
xlabel(t,'Median particle size (µm)')

nexttile
scatter(Q50,SYMM3,20,"black")
hold on 
scatter(meanQ50, meanSYMM3, 20, "red", 'filled')
hold on 
eb(1) = errorbar(meanQ50, meanSYMM3, stdevQ50, 'horizontal', 'LineStyle', 'none');
eb(2) = errorbar(meanQ50, meanSYMM3, stdevSYMM3, 'vertical', 'LineStyle', 'none');
set(eb, 'color', 'r', 'LineWidth', 1)
hold off

xlim([0 1400])
ylim([0.845 0.875])
xticks([])
yticks([0.85 0.86 0.87])
ylabel({ ...
    ['Symmetry'] ...
    ['(%)'] ...
    })

nexttile
scatter(Q50,SPHT3,20,"black")
hold on
scatter(meanQ50, meanSPHT3, 20, "red",'filled')
hold on 
eb(1) = errorbar(meanQ50, meanSPHT3, stdevQ50, 'horizontal', 'LineStyle', 'none');
eb(2) = errorbar(meanQ50, meanSPHT3, stdevSPHT3, 'vertical', 'LineStyle', 'none');
set(eb, 'color', 'r', 'LineWidth', 1)
hold off


xlim([0 1400])
ylim([0.645 0.805])
xticks([0, 200, 400, 600, 800, 1000 1200 1400])
yticks([0.65 0.70 0.75 0.80])

ylabel({ ...
    ['Sphericity'] ...
    ['(%)'] ...
    })