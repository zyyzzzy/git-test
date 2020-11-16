

% Lb=[2:0.001:66];
% n1=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+2;
% n2=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+3;
% 
% 
% time1 = (n1*20-10)*60;
% time2 = (n2*20-10)*60;
% 
% Goodput1 = Lb*1000./time1;
% Goodput2 = Lb*1000./time2;
% 
% 
% h1=plot(Lb,Goodput1,'-b');
% 
% hold on;
% h2=plot(Lb,Goodput2,'-k');
% hold on;


Lb=[2:0.001:66];
n3=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+2;
n4=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+1;


time3 = (n3*20-10)*60;
time4 = (n4*20-10)*60;

Goodput3 = Lb*1000./time3;
Goodput4 = Lb*1000./time4;


h3=plot(Lb,Goodput3,'-b');

hold on;
h4=plot(Lb,Goodput4,'-k');
hold on;

% Lb=[2:0.001:66];
% n5=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+3;
% 
% n6=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+2;
% 
% 
% time5 = (n5*20-10)*60;
% time6 = (n6*20-10)*60;
% 
% Goodput5 = Lb*1000./time5;
% Goodput6 = Lb*1000./time6;
% 
% 
% h5=plot(Lb,Goodput5,'-b');
% 
% hold on;
% h6=plot(Lb,Goodput6,'-k');
% hold on;



% %第一组实验数据
% C1_16K=[2.96,3.81,3.81,2.42,2.42,3.81,5.33,5.33,5.33,5.33];
% C1_32K=[4.85,4.10,4.10,4.10,5.93,5.93,5.93,7.62,4.10,3.56];
% C1_48K=[4.21,3.81,5.33,6.15,3.20,3.48,3.81,4.21,4.21,4.71];
% C1_64K=[3.23,3.44,3.68,4.27,3.68,3.44,3.23,3.44,3.23,3.44];
% 
% 
% 
% I11 =zeros(4,10);
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=2.131.*S11;
% x1=[16 32 48 64];
% % h1=errorbar(x1,M11,bar11,'ko-');
% h11=errorbar(x1,M11,bar11,'or');
% hold on;
% 
% %第二组实验数据
% C1_16K=[3.81,2.96,2.42,3.81,2.96,2.42,2.05,2.05,5.33,2.96];
% C1_32K=[4.10,4.10,5.93,5.93,3.56,3.14,3.14,2.81,4.10,4.10];
% C1_48K=[3.81,3.48,3.20,3.20,3.48,3.81,5.33,3.81,3.81,3.81];
% C1_64K=[3.23,3.68,3.95,2.88,2.48,2.60,3.23,2.88,3.68,3.95];
% 
% 
% I11 =zeros(4,10);
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=2.131.*S11;
% x1=[16 32 48 64];
% % h1=errorbar(x1,M11,bar11,'ko-');
% h22=errorbar(x1,M11,bar11,'dr');
% hold on;

%第三组实验数据

C1_16K=[5.33,5.33,5.33,3.81,3.81,3.81,2.96,2.96,2.96,2.42];
C1_32K=[4.85,4.85,4.85,4.85,5.93,5.93,4.10,4.10,4.10,7.62];
C1_48K=[4.21,4.21,4.21,3.81,3.81,3.81,3.81,4.71,4.71,4.71];
C1_64K=[3.44,3.68,3.44,3.68,3.23,3.23,3.44,3.44,3.95,3.23];





I11 =zeros(4,10);
I11(1,:)= C1_16K;
I11(2,:)= C1_32K;
I11(3,:)= C1_48K;
I11(4,:)= C1_64K;

J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=2.131.*S11;
x1=[16 32 48 64];
% h1=errorbar(x1,M11,bar11,'ko-');
h33=errorbar(x1,M11,bar11,'or');
hold on;

%第四组实验数据
C1_16K=[5.33,5.33,5.33,5.33,3.81,3.81,3.81,3.81,8.89,8.89];
C1_32K=[5.93,5.93,5.93,7.62,7.62,7.62,4.85,4.85,4.85,5.93];
C1_48K=[4.21,4.21,4.21,4.71,4.71,4.71,4.71,5.33,5.33,5.33];
C1_64K=[3.68,3.68,3.68,3.95,3.95,3.95,3.44,3.44,3.44,3.68];



I11 =zeros(4,10);
I11(1,:)= C1_16K;
I11(2,:)= C1_32K;
I11(3,:)= C1_48K;
I11(4,:)= C1_64K;

J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=2.131.*S11;
x1=[16 32 48 64];
% h1=errorbar(x1,M11,bar11,'ko-');
h44=errorbar(x1,M11,bar11,'dr');
hold on;


% %第五组实验数据
% 
% 
% C1_16K=[2.96,2.96,2.96,3.81,3.81,2.42,2.42,2.42,2.96,2.96];
% C1_32K=[5.93,4.85,4.10,4.10,3.56,3.14,4.10,4.10,4.10,4.10];
% C1_48K=[4.21,3.81,3.81,3.81,3.81,3.48,3.81,4.71,3.81,3.20];
% C1_64K=[3.23,3.23,3.23,3.44,3.44,3.44,2.88,2.88,2.88,3.23];
% 
% I11 =zeros(4,10);
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=2.131.*S11;
% x1=[16 32 48 64];
% % h1=errorbar(x1,M11,bar11,'ko-');
% h55=errorbar(x1,M11,bar11,'or');
% hold on;
% 
% %第六组实验数据
% C1_16K=[3.81,3.81,3.81,3.81,2.96,2.96,2.96,5.33,5.33,5.33];
% C1_32K=[5.93,5.93,5.93,5.93,4.85,4.85,4.10,4.10,4.10,4.85];
% C1_48K=[4.21,4.71,4.71,4.71,3.81,3.81,3.48,4.21,4.21,4.21];
% C1_64K=[3.44,3.23,3.05,3.68,3.95,3.44,3.44,3.44,3.44,3.44];
% 
% 
% I11 =zeros(4,10);
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=2.131.*S11;
% x1=[16 32 48 64];
% % h1=errorbar(x1,M11,bar11,'ko-');
% h66=errorbar(x1,M11,bar11,'dr');
% hold on;



hold on;
set(gca, 'XLim', [10, 66]);
set(gca,'Xtick', [12 16 20 24 28 32 36 40 44 48 52 56 60 64] ); 
set(gca,'XTickLabel',{'12' '16' '20' '24' '28' '32' '36' '40' '44' '48' '52' '56' '60' '64'});
% set(gca,'YLim',[0 4],'YTick',[0 0.5 1 1.5 2 2.5 3 3.5  4],...
%   'YTickLabel',{'0' '0.5' '1' '1.5' '2' '2.5' '3' '3.5' '4' });

xlabel('Bundle Size (Kbytes)','fontweight','normal','fontsize',13);
%ylabel('Number of transmission effort','fontweight','normal','fontsize',10);
ylabel('Goodput(bytes/sec)','fontweight','normal','fontsize',13);
% set([h1],'LineWidth',2.3,'MarkerSize',6.0);
% set([h2],'LineWidth',2.3,'MarkerSize',6.0);
% 
% set([h11],'LineWidth',2.3,'MarkerSize',6.0);
% set([h22],'LineWidth',2.3,'MarkerSize',6.0);
set([h3],'LineWidth',2.3,'MarkerSize',6.0);
set([h4],'LineWidth',2.3,'MarkerSize',6.0);

set([h33],'LineWidth',2.3,'MarkerSize',6.0);
set([h44],'LineWidth',2.3,'MarkerSize',6.0);
% set([h5],'LineWidth',2.3,'MarkerSize',6.0);
% set([h6],'LineWidth',2.3,'MarkerSize',6.0);
% 
% set([h55],'LineWidth',2.3,'MarkerSize',6.0);
% set([h66],'LineWidth',2.3,'MarkerSize',6.0);
%  legend([h1 h11 h2 h22] ,'The first set of theoretical values','The first set of experimental values','The second set of theoretical values','The second set of experimental values');
 legend([h3 h33 h4 h44] ,'The third set of theoretical values','The third set of experimental values','The fourth set of theoretical values','The fourth set of experimental values');
% legend([h5 h55 h6 h66] ,'第五组理论值','第五组实验值','第六组理论值','第六组实验值');
set(gca,'fontweight','bold','fontsize',13);
grid on;
