clear;clc;

AdvShadow=[0.95 0.50 1.00 0.60 0.20 0.99];   % Effectiveness, Stealthiness, Robustness, Practicability, Aesthetics, and Economics
weight=[0.3, 0.2, 0.2, 0.1, 0.1, 0.1];   % The weights for the six dimensions
AdvShadow_hiPAA=AdvShadow .* weight;
AdvShadow_hiPAA=sum(AdvShadow_hiPAA,2);

RC=radarChart(AdvShadow,'Type','Patch','PropName',{'Eff.', 'Rob.', 'Ste.', 'Aes.', 'Pra.', 'Eco.'});
RC=RC.draw();

colorList=[78 101 155;
          138 140 191;
          184 168 207;
          231 188 198;
          253 207 158;
          239 164 132;
          182 118 108]./255;
for n=1:RC.ClassNum
    RC.setPatchN(n,'FaceColor',colorList(n,:),'EdgeColor',colorList(n,:))
end

title(sprintf('hiPAA = %.2f', AdvShadow_hiPAA), 'FontSize',15)

ax = gcf;
exportgraphics(ax,'figures/lidarFig_AdvShadow_v1.png','BackgroundColor','none');
