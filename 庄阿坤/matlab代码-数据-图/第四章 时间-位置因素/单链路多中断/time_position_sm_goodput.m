

Lb=[2:0.001:66];
n1=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)));
n2=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+3;


time1 = (n1*20-10)*60;
time2 = (n2*20-10)*60;

Goodput1 = Lb*1000./time1;
Goodput2 = Lb*1000./time2;


h1=plot(Lb,Goodput1,'-b');

hold on;
h2=plot(Lb,Goodput2,'-k');
hold on;
 


%第一组实验数据
C1_16K=[8.89,8.89,8.89,8.89,8.89,8.89,8.89,5.33,8.89,8.89];
C1_32K=[7.62,7.62,7.62,10.67,10.67,10.67,5.93,5.93,5.93,7.62];
C1_48K=[5.33,6.15,5.33,4.71,5.33,4.21,7.27,5.33,5.33,4.71];
C1_64K=[3.95,4.64,3.68,3.95,4.27,3.68,3.95,3.95,3.95,3.95];



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
h11=errorbar(x1,M11,bar11,'or');
hold on;

%第二组实验数据
C1_16K=[2.42,2.05,2.05,5.33,2.96,3.81,2.96,2.42,3.81,2.96];
C1_32K=[3.14,3.14,2.81,4.10,4.10,4.10,4.10,5.93,5.93,3.56];
C1_48K=[3.81,5.33,3.81,3.81,3.81,3.81,3.48,3.20,3.20,3.48];
C1_64K=[2.60,3.23,2.88,3.68,3.95,3.23,3.68,3.95,2.88,2.48];


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
h22=errorbar(x1,M11,bar11,'dr');
hold on;




hold on;
set(gca, 'XLim', [10, 66]);
set(gca,'Xtick', [12 16 20 24 28 32 36 40 44 48 52 56 60 64] ); 
set(gca,'XTickLabel',{'12' '16' '20' '24' '28' '32' '36' '40' '44' '48' '52' '56' '60' '64'});
% set(gca,'YLim',[0 4],'YTick',[0 0.5 1 1.5 2 2.5 3 3.5  4],...
%   'YTickLabel',{'0' '0.5' '1' '1.5' '2' '2.5' '3' '3.5' '4' });

xlabel('Bundle尺寸 (Kbytes)','fontweight','normal','fontsize',13);
%ylabel('Number of transmission effort','fontweight','normal','fontsize',10);
ylabel('Goodput(bytes/sec)','fontweight','normal','fontsize',13);
set([h1],'LineWidth',2.3,'MarkerSize',6.0);
set([h2],'LineWidth',2.3,'MarkerSize',6.0);

set([h11],'LineWidth',2.3,'MarkerSize',6.0);
set([h22],'LineWidth',2.3,'MarkerSize',6.0);

legend([h1 h11 h2 h22] ,'无中断理论值','无中断实验值','中断理论值','中断实验值');

set(gca,'fontweight','bold','fontsize',13);
grid on;
