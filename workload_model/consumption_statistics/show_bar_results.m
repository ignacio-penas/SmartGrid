load('pricing_results.mat');

figure(1);
b =  bar(price_comparation,'FaceColor',[0 .5 .5],'LineWidth',1.5);
ylabel('€');


%set(gca,'XTick',[1 2 3 4] );
set(gca,'XTickLabel',{'Spain', 'United Kingdom', 'United States', 'Combined'} );
hold off;