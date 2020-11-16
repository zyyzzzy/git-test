

Lb=[4000:64000];
n1=ceil((1-0.000005).^((-8)*(Lb+8+(Lb+20)/(1500-20)*28)));
time1 = (n1*20-10)*60;
h1 =plot(Lb,time1,'-b');

hold on;
n2=ceil((1-0.000005).^((-8)*(Lb+8+(Lb+20)/(1500-20)*28)))+2;
time2 = (n2*20-10)*60;
h2 =plot(Lb,time2,'-k');
hold on;

n3=ceil((1-0.000005).^((-8)*(Lb+8+(Lb+20)/(1500-20)*28)))+3;
time3 = (n3*20-10)*60;
h3 =plot(Lb,time3,'-g');
hold on;


%第一组实验数据
C1_16K=[1800,1800,1800,1800,1800,1800,1800,3000,1800,1800];
C1_24K=[1800,4200,3000,3000,4200,4200,3000,3000,3000,1800];
C1_32K=[3000,4200,4200,3000,6600,4200,5400,4200,4200,4200];
C1_40K=[7800,6600,6600,5400,6600,5400,6600,5400,9000,6600];
C1_48K=[7800,9000,9000,9000,6600,7800,10200,12600,10200,9000];
C1_56K=[11400,11400,11400,15000,11400,12600,9000,12600,11400,11400];

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
x1=[16000 24000 32000 40000 48000 56000 ];
% h1=errorbar(x1,M11,bar11,'ko-');
h11=errorbar(x1,M11,bar11,'or');
hold on;

%第二组实验数据
C1_16K=[5400,4200,3000,4200,6600,4200,1800,4200,4200,6600];
C1_24K=[4200,5400,6600,5400,6600,4200,5400,4200,6600,5400];
C1_32K=[6600,9000,6600,9000,6600,7800,6600,6600,6600,4200];
C1_40K=[9000,9000,11400,7800,10200,9000,11400,9000,5400,9000];
C1_48K=[11400,16200,13800,11400,9000,11400,10200,12600,11400,7800];
C1_56K=[13800,12600,12600,11400,13800,13800,17400,13800,13800,16200];

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
x1=[16000 24000 32000 40000 48000 56000 ];
% h1=errorbar(x1,M11,bar11,'ko-');
h22=errorbar(x1,M11,bar11,'dr');
hold on;

%第三组实验数据
C1_16K=[4200,5400,3000,6600,7800,5400,4200,5400,6600,5400];
C1_24K=[6600,11400,4200,4200,6600,7800,6600,5400,6600,5400];
C1_32K=[7800,9000,7800,10200,7800,11400,7800,4200,7800,7800];
C1_40K=[10200,10200,9000,12600,10200,10200,10200,9000,10200,7800];
C1_48K=[12600,15000,17400,10200,11400,12600,12600,11400,11400,12600];
C1_56K=[15000,13800,12600,13800,17400,17400,15000,15000,15000,15000];

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
x1=[16000 24000 32000 40000 48000 56000 ];
% h1=errorbar(x1,M11,bar11,'ko-');
h33=errorbar(x1,M11,bar11,'sr');
hold on;



set(gca, 'XLim', [4000, 64000]);
set(gca,'Xtick', [4000 8000 12000 16000 20000 24000 28000 32000 36000 40000 44000 48000 52000 56000 60000 64000] ); 
set(gca,'XTickLabel',{'4' '8' '12' '16' '20' '24' '28' '32' '36' '40' '44' '48' '52' '56' '60' '64'});
xlabel('Bundle尺寸 (Kbytes)','fontweight','normal','fontsize',13);
ylabel('交付时间(秒)','fontweight','normal','fontsize',13);
set(gca,'fontweight','bold','fontsize',13);
set(gca,'YLim',[0 20000],'YTick',[0  2000  4000  6000  8000   10000  12000  14000  16000  18000  20000 ],...
  'YTickLabel',{'0'  '2000'  '4000'  '6000'  '8000'  '10000'  '12000'  '14000'  '16000'  '18000'  '20000'});
set([h1],'LineWidth',2.3,'MarkerSize',6.0);
set([h2],'LineWidth',2.3,'MarkerSize',6.0);
set([h3],'LineWidth',2.3,'MarkerSize',6.0);
set([h11],'LineWidth',2.3,'MarkerSize',6.0);
set([h22],'LineWidth',2.3,'MarkerSize',6.0);
set([h33],'LineWidth',2.3,'MarkerSize',6.0);
% set([h2],'LineWidth',1.5,'MarkerSize',6.0);
legend([h1 h11 h2 h22 h3 h33],'第一组理论值','第一组实验值','第二组理论值','第二组实验值','第三组理论值','第三组实验值');
grid on;
