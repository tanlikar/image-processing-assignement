
x=[1,2,3,4];
x1=[1,4];

% plot the graph with mean of Red channel as y-axis and number of tube as x-axis   
figure(1)
plot([MR(1:2);MR(20:21)],x,[MR(4:5);MR(23:24)],x,[MR(7:8);MR(26:27)],x,[MR(10:11);MR(29:30)],x,[MR(13:14);MR(32:33)],x,[MR(16:17);MR(35:36)],x,[MR(19);MR(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Mean of Red channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Red channel')

% plot the graph with mean of Red channel as y-axis and number of tube as x-axis   
figure(2)
plot([MG(1:2);MG(20:21)],x,[MG(4:5);MG(23:24)],x,[MG(7:8);MG(26:27)],x,[MG(10:11);MG(29:30)],x,[MG(13:14);MG(32:33)],x,[MG(16:17);MG(35:36)],x,[MG(19);MG(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Mean of Green channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Green channel')

% plot the graph with mean of Blue channel as y-axis and number of tube as x-axis   
figure(3)
plot([MB(1:2);MB(20:21)],x,[MB(4:5);MB(23:24)],x,[MB(7:8);MB(26:27)],x,[MB(10:11);MB(29:30)],x,[MB(13:14);MB(32:33)],x,[MB(16:17);MB(35:36)],x,[MB(19);MB(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Mean of Blue channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Blue channel')

% plot the graph with mean of Hue as y-axis and number of tube as x-axis   
figure(4)
plot([MH(1:2);MH(20:21)],x,[MH(4:5);MH(23:24)],x,[MH(7:8);MH(26:27)],x,[MH(10:11);MH(29:30)],x,[MH(13:14);MH(32:33)],x,[MH(16:17);MH(35:36)],x,[MH(19);MH(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Mean of Hue for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Hue')

% plot the graph with mean of Saturation as y-axis and number of tube as x-axis   
figure(5)
plot([MS(1:2);MS(20:21)],x,[MS(4:5);MS(23:24)],x,[MS(7:8);MS(26:27)],x,[MS(10:11);MS(29:30)],x,[MS(13:14);MS(32:33)],x,[MS(16:17);MS(35:36)],x,[MS(19);MS(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Mean of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Saturation')

% plot the graph with mean of Value as y-axis and number of tube as x-axis   
figure(6)
plot([MV(1:2);MV(20:21)],x,[MV(4:5);MV(23:24)],x,[MV(7:8);MV(26:27)],x,[MV(10:11);MV(29:30)],x,[MV(13:14);MV(32:33)],x,[MV(16:17);MV(35:36)],x,[MV(19);MV(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Mean of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Value')

% plot the graph with Entropy of Red channel as y-axis and number of tube as x-axis   
figure(7)
plot([ER(1:2);ER(20:21)],x,[ER(4:5);ER(23:24)],x,[ER(7:8);ER(26:27)],x,[ER(10:11);ER(29:30)],x,[ER(13:14);ER(32:33)],x,[ER(16:17);ER(35:36)],x,[ER(19);ER(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Entropy of Red channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Red channel')

% plot the graph with Entropy of Green channel as y-axis and number of tube as x-axis   
figure(8)
plot([EG(1:2);EG(20:21)],x,[EG(4:5);EG(23:24)],x,[EG(7:8);EG(26:27)],x,[EG(10:11);EG(29:30)],x,[EG(13:14);EG(32:33)],x,[EG(16:17);EG(35:36)],x,[EG(19);EG(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Entropy of Green channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Green channel')

% plot the graph with Entropy of Blue channel as y-axis and number of tube as x-axis   
figure(9)
plot([EB(1:2);EB(20:21)],x,[EB(4:5);EB(23:24)],x,[EB(7:8);EB(26:27)],x,[EB(10:11);EB(29:30)],x,[EB(13:14);EB(32:33)],x,[EB(16:17);EB(35:36)],x,[EB(19);EB(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Entropy of Blue channel for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Blue channel')

% plot the graph with Entropy of Hue as y-axis and number of tube as x-axis   
figure(10)
plot([EH(1:2);EH(20:21)],x,[EH(4:5);EH(23:24)],x,[EH(7:8);EH(26:27)],x,[EH(10:11);EH(29:30)],x,[EH(13:14);EH(32:33)],x,[EH(16:17);EH(35:36)],x,[EH(19);EH(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Entropy of Hue for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Hue')

% plot the graph with Entropy of Saturation as y-axis and number of tube as x-axis   
figure(11)
plot([ES(1:2);ES(20:21)],x,[ES(4:5);ES(23:24)],x,[ES(7:8);ES(26:27)],x,[ES(10:11);ES(29:30)],x,[ES(13:14);ES(32:33)],x,[ES(16:17);ES(35:36)],x,[ES(19);ES(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Entropy of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Saturation')

% plot the graph with Entropy of Value as y-axis and number of tube as x-axis   
figure(12)
plot([EV(1:2);EV(20:21)],x,[EV(4:5);MV(23:24)],x,[EV(7:8);MV(26:27)],x,[EV(10:11);EV(29:30)],x,[EV(13:14);EV(32:33)],x,[EV(16:17);EV(35:36)],x,[EV(19);EV(38)],x1,'--')
set(gca,'ytick',0:1:4)

% labelling the title and legend of the graph
title('Entropy of Saturation for all concentration')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Value')