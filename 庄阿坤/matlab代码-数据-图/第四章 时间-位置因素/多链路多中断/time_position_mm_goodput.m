clear;
close all;
figure('color','white');

% Lb=[0:0.001:66];
% n=ceil((1-0.000005).^(-8*(Lb.*1000+8+(Lb.*1000+20)/(1500-20)*28)));
Lb=[2:0.001:66];
n1=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)));
n2=ceil((1-0.000003).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)));

time1 = (n1*20-10)*60+(n2*20-10)*120;
%Delivery_Time =(n-1)*1200+600;
Goodput = Lb*1000./time1;
%h11=plot(Lb,Goodput,'-');
h1=plot(Lb,Goodput,'-b');
hold on;

n1=ceil((1-0.000005).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)));
n2=ceil((1-0.000003).^(-8*(Lb*1000+8+(Lb*1000+20)/(1500-20)*28)))+1;

time1 = (n1*20-10)*60+(n2*20-10)*120;
%Delivery_Time =(n-1)*1200+600;
Goodput = Lb*1000./time1;
%h11=plot(Lb,Goodput,'-');
h2=plot(Lb,Goodput,'-k');
%axis ([4:4:64 0:1:10]);
hold on;

%第一组实验数据
C1_16K=[2.96,3.14,2.96,2.96,2.96,2.96,2.96,2.96,2.96,2.96];
C1_32K=[2.96,3.14,3.14,3.14,3.14,3.14,3.14,3.14,3.14,3.14];
C1_48K=[2.76,2.37,2.76,2.76,2.76,2.76,2.76,2.76,2.76,2.76];
C1_64K=[2.37,2.37,2.76,2.37,2.37,2.37,2.37,2.37,2.37,2.37];



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
C1_16K=[2.53,2.05,2.05,2.05,2.05,2.05,2.05,2.05,2.05,2.05];
C1_32K=[2.53,2.53,2.53,2.53,2.53,2.53,2.53,2.53,2.53,2.05];
C1_48K=[2.42,2.42,2.42,2.42,2.16,2.42,2.42,2.42,2.42,2.42];
C1_64K=[2.16,2.16,2.16,2.42,2.16,2.16,2.16,2.16,2.16,2.16];


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
