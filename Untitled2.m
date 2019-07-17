close all;

x=[1,2];
%x1=[1,4];

% plot the graph with mean of Red channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(MR(1:2),x,MR(4:5),x,MR(7:8),x,MR(10:11),x,MR(13:14),x,MR(16:17),x,[MR(19);MR(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Red channel for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Red channel')

%DAY 2
figure()
plot(MR(20:21),x,MR(23:24),x,MR(26:27),x,MR(29:30),x,MR(32:33),x,MR(35:36),x,[MR(38);MR(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Red channel for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Red channel')

%%
% plot the graph with mean of Green channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(MG(1:2),x,MG(4:5),x,MG(7:8),x,MG(10:11),x,MG(13:14),x,MG(16:17),x,[MG(19);MG(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Green channel for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Green channel')

%DAY 2
figure()
plot(MG(20:21),x,MG(23:24),x,MG(26:27),x,MG(29:30),x,MG(32:33),x,MG(35:36),x,[MG(38);MG(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Green channel for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Green channel')

%%
% plot the graph with mean of Blue channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(MB(1:2),x,MB(4:5),x,MB(7:8),x,MB(10:11),x,MB(13:14),x,MB(16:17),x,[MG(19);MG(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Blue channel for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Blue channel')

%DAY 2
figure()
plot(MG(20:21),x,MG(23:24),x,MG(26:27),x,MG(29:30),x,MG(32:33),x,MG(35:36),x,[MG(38);MG(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Blue channel for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Blue channel')

%%
% plot the graph with mean of Hue channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(MH(1:2),x,MH(4:5),x,MH(7:8),x,MH(10:11),x,MH(13:14),x,MH(16:17),x,[MH(19);MH(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Hue for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Hue')

%DAY 2
figure()
plot(MH(20:21),x,MH(23:24),x,MH(26:27),x,MH(29:30),x,MH(32:33),x,MH(35:36),x,[MH(38);MH(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Hue for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Hue')

%%
% plot the graph with mean of Saturation as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(MS(1:2),x,MS(4:5),x,MS(7:8),x,MS(10:11),x,MS(13:14),x,MS(16:17),x,[MS(19);MS(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Saturation for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Saturation')

%DAY 2
figure()
plot(MS(20:21),x,MS(23:24),x,MS(26:27),x,MS(29:30),x,MS(32:33),x,MS(35:36),x,[MS(38);MS(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Saturation for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Saturation')

%%
% plot the graph with mean of Value as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(MV(1:2),x,MV(4:5),x,MV(7:8),x,MV(10:11),x,MV(13:14),x,MV(16:17),x,[MV(19);MV(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Value for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Value')

%DAY 2
figure()
plot(MV(20:21),x,MV(23:24),x,MV(26:27),x,MV(29:30),x,MV(32:33),x,MV(35:36),x,[MV(38);MV(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Mean of Value for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Mean of Value')


%%
% plot the graph with Entropy of Red channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(ER(1:2),x,ER(4:5),x,ER(7:8),x,ER(10:11),x,ER(13:14),x,ER(16:17),x,[ER(19);ER(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Red Channel for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Red Channel')


%DAY 2
figure()
plot(ER(20:21),x,ER(23:24),x,ER(26:27),x,ER(29:30),x,ER(32:33),x,ER(35:36),x,[ER(38);ER(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Red Channel for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Red Channel')

%%
% plot the graph with Entropy of Green channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(EG(1:2),x,EG(4:5),x,EG(7:8),x,EG(10:11),x,EG(13:14),x,EG(16:17),x,[EG(19);EG(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Green channel for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Green channel')

%DAY 2
figure()
plot(EG(20:21),x,EG(23:24),x,EG(26:27),x,EG(29:30),x,EG(32:33),x,EG(35:36),x,[EG(38);EG(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Green Channel for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Green Channel')


%%
% plot the graph with Entropy of Blue channel as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(EB(1:2),x,EB(4:5),x,EB(7:8),x,EB(10:11),x,EB(13:14),x,EB(16:17),x,[EB(19);EG(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Blue channel for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Blue channel')

%DAY 2
figure()
plot(EB(20:21),x,EB(23:24),x,EB(26:27),x,EB(29:30),x,EB(32:33),x,EB(35:36),x,[EB(38);EB(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Blue Channel for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Blue Channel')


%%
% plot the graph with Entropy of Hue as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(EH(1:2),x,EH(4:5),x,EH(7:8),x,EH(10:11),x,EH(13:14),x,EH(16:17),x,[EH(19);EH(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Hue for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Hue')

%DAY 2
figure()
plot(EH(20:21),x,EH(23:24),x,EH(26:27),x,EH(29:30),x,EH(32:33),x,EH(35:36),x,[EH(38);EH(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Hue for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Hue')


%%
% plot the graph with Entropy of Saturation as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(ES(1:2),x,ES(4:5),x,ES(7:8),x,ES(10:11),x,ES(13:14),x,ES(16:17),x,[ES(19);ES(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Saturation for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Saturation')

%DAY 2
figure()
plot(ES(20:21),x,ES(23:24),x,ES(26:27),x,ES(29:30),x,ES(32:33),x,ES(35:36),x,[ES(38);ES(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Saturation for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Saturation')

%%
% plot the graph with Entropy of Value as y-axis and number of tube as x-axis   
%DAY 1
figure()
plot(EV(1:2),x,EV(4:5),x,EV(7:8),x,EV(10:11),x,EV(13:14),x,EV(16:17),x,[EV(19);EV(19)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Value for all concentration Day 1')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Value')

%DAY 2
figure()
plot(EV(20:21),x,EV(23:24),x,EV(26:27),x,EV(29:30),x,EV(32:33),x,EV(35:36),x,[EV(38);EV(38)],x,'--')
set(gca,'ytick',0:1:2)

% labelling the title and legend of the graph
title('Entropy of Value for all concentration Day 2')
legend('concentration 0.25','concentration 0.5','concentration 1.0','concentration 2.0','concentration 4.0','concentration 8.0','concentration blank')
ylabel('Number of tube')
xlabel('Entropy of Value')