clear;
close all;
figure('color','white');

Lb=[2:0.001:66];
n1=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)));
n2=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+2;
n3=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+3;

time1 = (n1*20-10)*60;
time2 = (n2*20-10)*60;
time3 = (n3*20-10)*60;

Goodput1 = Lb*1000./time1;
Goodput2 = Lb*1000./time2;
Goodput3 = Lb*1000./time3;

h1=plot(Lb,Goodput1,'-b');

hold on;
h2=plot(Lb,Goodput2,'-k');
hold on;
h3=plot(Lb,Goodput3,'-g');
hold on;
%第一组实验数据
C1_16K=[8.89,8.89,8.89,8.89,8.89,8.89,5.33,8.89,26.67,5.33];
C1_24K=[13.33,5.71,8.00,8.00,5.71,5.71,8.00,8.00,8.00,13.33];
C1_32K=[7.62,7.62,10.67,10.67,5.93,5.93,7.62,7.62,7.62,5.93];
C1_40K=[5.13,6.06,6.06,6.06,5.13,7.41,6.06,6.06,6.06,6.06];
C1_48K=[6.15,5.33,5.33,5.33,7.27,6.15,4.71,3.81,4.21,6.15];
C1_56K=[4.91,8.48,4.91,3.73,4.91,4.44,5.49,4.44,4.91,4.91];


I11 =zeros(6,10);
I11(1,:)= C1_16K;
I11(2,:)= C1_24K;
I11(3,:)= C1_32K;
I11(4,:)= C1_40K;
I11(5,:)= C1_48K;
I11(6,:)= C1_56K;
J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=2.131.*S11;
x1=[16 24 32 40 48 56];
% h1=errorbar(x1,M11,bar11,'ko-');
h11=errorbar(x1,M11,bar11,'or');
hold on;

%第二组实验数据

C1_16K=[2.96,3.81,5.33,3.81,2.42,3.81,8.89,3.81,3.81,2.42];
C1_24K=[5.71,4.44,3.64,4.44,3.64,5.71,4.44,5.71,3.64,4.44];
C1_32K=[4.85,3.56,4.85,3.56,4.85,4.10,4.85,4.85,4.85,7.62];
C1_40K=[4.44,4.44,3.51,5.13,3.92,4.44,3.51,4.44,7.41,4.44];
C1_48K=[4.21,2.96,3.48,4.21,5.33,4.21,4.71,3.81,4.21,6.15];
C1_56K=[4.06,4.44,4.44,4.91,4.06,4.06,3.22,4.06,4.06,3.46];



I11 =zeros(6,10);
I11(1,:)= C1_16K;
I11(2,:)= C1_24K;
I11(3,:)= C1_32K;
I11(4,:)= C1_40K;
I11(5,:)= C1_48K;
I11(6,:)= C1_56K;
J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=2.131.*S11;
x1=[16 24 32 40 48 56];
% h1=errorbar(x1,M11,bar11,'ko-');
h22=errorbar(x1,M11,bar11,'dr');
hold on;

%第三组实验数据
C1_16K=[3.81,2.96,5.33,2.42,2.05,2.96,3.81,2.96,2.42,2.96];
C1_24K=[3.64,2.11,5.71,5.71,3.64,3.08,3.64,4.44,3.64,4.44];
C1_32K=[4.10,3.56,4.10,3.14,4.10,2.81,4.10,7.62,4.10,4.10];
C1_40K=[3.92,3.92,4.44,3.17,3.92,3.92,3.92,4.44,3.92,5.13];
C1_48K=[3.81,3.20,2.76,4.71,4.21,3.81,3.81,4.21,4.21,3.81];
C1_56K=[3.73,4.06,4.44,4.06,3.22,3.22,3.73,3.73,3.73,3.73];



I11 =zeros(6,10);
I11(1,:)= C1_16K;
I11(2,:)= C1_24K;
I11(3,:)= C1_32K;
I11(4,:)= C1_40K;
I11(5,:)= C1_48K;
I11(6,:)= C1_56K;
J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=2.131.*S11;
x1=[16 24 32 40 48 56];
% h1=errorbar(x1,M11,bar11,'ko-');
h33=errorbar(x1,M11,bar11,'sr');
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
set([h3],'LineWidth',2.3,'MarkerSize',6.0);
set([h11],'LineWidth',2.3,'MarkerSize',6.0);
set([h22],'LineWidth',2.3,'MarkerSize',6.0);
set([h33],'LineWidth',2.3,'MarkerSize',6.0);
legend([h1 h11 h2 h22 h3 h33],'第一组理论值','第一组实验值','第二组理论值','第二组实验值','第三组理论值','第三组实验值');
set(gca,'fontweight','bold','fontsize',13);
grid on;
