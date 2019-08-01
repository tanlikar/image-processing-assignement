
x=[1,2,3,4,5,6];
x1=[1,6];
saveDir1 = fullfile('c:\','Users','tanli', 'OneDrive','year 4 sem 1', 'image processing', 'assignment' , 'processed' , 'Graph');
mkdir(saveDir1);

% plot the graph with mean of Red channel as y-axis and number of tube as x-axis   
figure(1)
plot([MR(1:3);MR(20:22)],x,[MR(4:6);MR(23:25)],x,[MR(7:9);MR(26:28)],x,[MR(10:12);MR(29:31)],x,[MR(13:15);MR(32:34)],x,[MR(16:18);MR(35:37)],x,[MR(19);MR(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Mean of Red channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Red channel')
saveas(gcf,saveDir1 +"\" + "mean of Red channel.png");

% plot the graph with mean of Green channel as y-axis and number of tube as x-axis   
figure(2)
plot([MG(1:3);MG(20:22)],x,[MG(4:6);MG(23:25)],x,[MG(7:9);MG(26:28)],x,[MG(10:12);MG(29:31)],x,[MG(13:15);MG(32:34)],x,[MG(16:18);MG(35:37)],x,[MG(19);MG(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Mean of Green channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Green channel')
saveas(gcf,saveDir1 +"\" + "mean of Green channel.png")

% plot the graph with mean of Blue channel as y-axis and number of tube as x-axis   
figure(3)
plot([MB(1:3);MB(20:22)],x,[MB(4:6);MB(23:25)],x,[MB(7:9);MB(26:28)],x,[MB(10:12);MB(29:31)],x,[MB(13:15);MB(32:34)],x,[MB(16:18);MB(35:37)],x,[MB(19);MB(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Mean of Blue channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Blue channel')
saveas(gcf,saveDir1 +"\" + "mean of Blue channel.png")

% plot the graph with mean of Hue as y-axis and number of tube as x-axis   
figure(4)
plot([MH(1:3);MH(20:22)],x,[MH(4:6);MH(23:25)],x,[MH(7:9);MH(26:28)],x,[MH(10:12);MH(29:31)],x,[MH(13:15);MH(32:34)],x,[MH(16:18);MH(35:37)],x,[MH(19);MH(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Mean of Hue for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Hue')
saveas(gcf,saveDir1 +"\" + "mean of Hue.png")

% plot the graph with mean of Saturation as y-axis and number of tube as x-axis   
figure(5)
plot([MS(1:3);MS(20:22)],x,[MS(4:6);MS(23:25)],x,[MS(7:9);MS(26:28)],x,[MS(10:12);MS(29:31)],x,[MS(13:15);MS(32:34)],x,[MS(16:18);MS(35:37)],x,[MS(19);MS(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Mean of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Saturation')
saveas(gcf,saveDir1 +"\" + "mean of Saturation.png")

% plot the graph with mean of Value as y-axis and number of tube as x-axis   
figure(6)
plot([MV(1:3);MV(20:22)],x,[MV(4:6);MV(23:25)],x,[MV(7:9);MV(26:28)],x,[MV(10:12);MV(29:31)],x,[MV(13:15);MV(32:34)],x,[MV(16:18);MV(35:37)],x,[MV(19);MV(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Mean of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Value')
saveas(gcf,saveDir1 +"\" + "mean of Value.png")

% plot the graph with Entropy of Red channel as y-axis and number of tube as x-axis   
figure(7)
plot([ER(1:3);ER(20:22)],x,[ER(4:6);ER(23:25)],x,[ER(7:9);ER(26:28)],x,[ER(10:12);ER(29:31)],x,[ER(13:15);ER(32:34)],x,[ER(16:18);ER(35:37)],x,[ER(19);ER(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Entropy of Red channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Red channel')
saveas(gcf,saveDir1 +"\" + "Entropy of Red channel.png")

% plot the graph with Entropy of Green channel as y-axis and number of tube as x-axis   
figure(8)
plot([EG(1:3);EG(20:22)],x,[EG(4:6);EG(23:25)],x,[EG(7:9);EG(26:28)],x,[EG(10:12);EG(29:31)],x,[EG(13:15);EG(32:34)],x,[EG(16:18);EG(35:37)],x,[EG(19);EG(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Entropy of Green channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Green channel')
saveas(gcf,saveDir1 +"\" + "Entropy of Green channel.png")

% plot the graph with Entropy of Blue channel as y-axis and number of tube as x-axis   
figure(9)
plot([EB(1:3);EB(20:22)],x,[EB(4:6);EB(23:25)],x,[EB(7:9);EB(26:28)],x,[EB(10:12);EB(29:31)],x,[EB(13:15);EB(32:34)],x,[EB(16:18);EB(35:37)],x,[EB(19);EB(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Entropy of Blue channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Blue channel')
saveas(gcf,saveDir1 +"\" + "Entropy of Blue channel.png")

% plot the graph with Entropy of Hue as y-axis and number of tube as x-axis   
figure(10)
plot([EH(1:3);EH(20:22)],x,[EH(4:6);EH(23:25)],x,[EH(7:9);EH(26:28)],x,[EH(10:12);EH(29:31)],x,[EH(13:15);EH(32:34)],x,[EH(16:18);EH(35:37)],x,[EH(19);EH(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Entropy of Hue for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Hue')
saveas(gcf,saveDir1 +"\" + "Entropy of Hue.png")

% plot the graph with Entropy of Saturation as y-axis and number of tube as x-axis   
figure(11)
plot([ES(1:3);ES(20:22)],x,[ES(4:6);ES(23:25)],x,[ES(7:9);ES(26:28)],x,[ES(10:12);ES(29:31)],x,[ES(13:15);ES(32:34)],x,[ES(16:18);ES(35:37)],x,[ES(19);ES(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Entropy of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Saturation')
saveas(gcf,saveDir1 +"\" + "Entropy of Saturation.png")

% plot the graph with Entropy of Value as y-axis and number of tube as x-axis   
figure(12)
plot([EV(1:3);EV(20:22)],x,[EV(4:6);MV(23:25)],x,[EV(7:9);MV(26:28)],x,[EV(10:12);EV(29:31)],x,[EV(13:15);EV(32:34)],x,[EV(16:18);EV(35:37)],x,[EV(19);EV(38)],x1,'--')
set(gca,'ytick',0:1:6)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 1, 0.96]); %set figure to full screen

% labelling the title and legend of the graph
title('Entropy of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Value')
saveas(gcf,saveDir1 +"\" + "Entropy of Value.png")