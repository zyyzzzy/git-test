% Lb=[2000:66000];
% n1=ceil((1-0.000005).^(-8*(Lb+8+(Lb+20)/(1500-20)*28)))+2;
% h1 =plot(Lb,n1,'-b');
% hold on; 
% 
% n2=ceil((1-0.000005).^(-8*(Lb+8+(Lb+20)/(1500-20)*28)))+3;
% h2 =plot(Lb,n2,'-k');
% hold on;

Lb=[2000:66000];
n3=ceil((1-0.000005).^(-8*(Lb+8+(Lb+20)/(1500-20)*28)))+2;
h3 =plot(Lb,n3,'-b');
hold on;

n4=ceil((1-0.000005).^(-8*(Lb+8+(Lb+20)/(1500-20)*28)))+1;
h4 =plot(Lb,n4,'-k');
hold on;


% Lb=[2000:66000];
% n5=ceil((1-0.000005).^(-8*(Lb+8+(Lb+20)/(1500-20)*28)))+3;
% h5 =plot(Lb,n5,'-b');
% hold on;
% 
% n6=ceil((1-0.000005).^(-8*(Lb+8+(Lb+20)/(1500-20)*28)))+2;
% h6 =plot(Lb,n6,'-k');
% hold on;



% %第一组实验数据
% C1_16K =[5,4,4,6,6,4,3,3,3,3 ]; % case1,16k
% C1_32K =[6,7,7,7,5,5,5,4,7,8];
% C1_48K =[10,11,8,7,13,12,11,10,10,9];
% C1_64K =[17,16,15,13,15,16,17,16,17,16]; 
%    
% I11 =zeros(4,10);
%  
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% % 
% % 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=2.131.*S11;
% x1=[16000 32000 48000 64000];
% 
% h11=errorbar(x1,M11,bar11,'or');
% hold on;
% %第二组数据
% C1_16K =[4,5,6,4,5,6,7,7,3,5 ]; % case1,16k
% C1_32K =[7,7,5,5,8,9,9,10,7,7];
% C1_48K =[11,12,13,13,12,11,8,11,11,11];
% C1_64K =[17,15,14,19,22,21,17,19,15,14]; 
% % 
% % 
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% % 
% % 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=2.131.*S11;
% x1=[16000 32000 48000 64000];
% 
% h22=errorbar(x1,M11,bar11,'dr');
% hold on;

%第三组实验数据
C1_16K =[3,3,3,4,4,4,5,5,5,6]; % case1,16k
C1_32K =[6,6,6,6,5,5,7,7,7,4];
C1_48K =[10,10,10,11,11,11,11,9,9,9];
C1_64K =[16,15,16,15,17,17,16,16,14,17]; 


  
I11 =zeros(4,10);

I11(1,:)= C1_16K;
I11(2,:)= C1_32K;
I11(3,:)= C1_48K;
I11(4,:)= C1_64K;


J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=4.131.*S11;
x1=[16000 32000 48000 64000];
% h1=errorbar(x1,M11,bar11,'ko-');
h33=errorbar(x1,M11,bar11,'or');
hold on;
%第四组数据
C1_16K =[3,3,3,3,4,4,4,4,2,2];
C1_32K =[5,5,5,4,4,4,6,6,6,5];
C1_48K =[10,10,10,9,9,9,9,8,8,8];
C1_64K =[15,15,15,14,14,14,16,16,16,15]; 


I11(1,:)= C1_16K;
I11(2,:)= C1_32K;
I11(3,:)= C1_48K;
I11(4,:)= C1_64K;


J11=I11';
M11=mean(J11);
S11=std(J11);
S11=S11/10; 
bar11=4.131.*S11;
x1=[16000 32000 48000 64000];

h44=errorbar(x1,M11,bar11,'dr');
hold on;

% %第五组实验数据
% C1_16K =[5,5,5,4,4,6,6,6,5,5]; % case1,16k
% C1_32K =[5,6,7,7,8,9,7,7,7,7];
% C1_48K =[10,11,11,11,11,12,11,9,11,13];
% C1_64K =[17,17,17,16,16,16,19,19,19,17]; 
% 
% 
%   
% I11 =zeros(4,10);
% 
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% 
% 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=4.131.*S11;
% x1=[16000 32000 48000 64000];
% % h1=errorbar(x1,M11,bar11,'ko-');
% h55=errorbar(x1,M11,bar11,'or');
% hold on;
% %第六组数据
% C1_16K =[4,4,4,4,5,5,5,3,3,3];
% C1_32K =[5,5,5,5,6,6,7,7,7,6];
% C1_48K =[10,9,9,9,11,11,12,10,10,10];
% C1_64K =[16,17,18,15,14,16,16,16,16,16]; 
% 
% 
% I11(1,:)= C1_16K;
% I11(2,:)= C1_32K;
% I11(3,:)= C1_48K;
% I11(4,:)= C1_64K;
% 
% 
% J11=I11';
% M11=mean(J11);
% S11=std(J11);
% S11=S11/10; 
% bar11=4.131.*S11;
% x1=[16000 32000 48000 64000];
% % h1=errorbar(x1,M11,bar11,'ko-');
% h66=errorbar(x1,M11,bar11,'dr');
% hold on;

set(gca, 'XLim', [2000, 66000]);
set(gca,'Xtick', [4000 8000 12000 16000 20000 24000 28000 32000 36000 40000 44000 48000 52000 56000 60000 64000] ); 
set(gca,'XTickLabel',{'4' '8' '12' '16' '20' '24' '28' '32' '36' '40' '44' '48' '52' '56' '60' '64'});


xlabel('Bundle Size(Kbytes)','fontweight','normal','fontsize',13);
ylabel('Number Of Transmission(times)','fontweight','normal','fontsize',13);
 set(gca,'fontweight','bold','fontsize',13);
set(gca,'YLim',[0 20],'YTick',[0 2 4 6 8 10 12 14 16 18 20],...
  'YTickLabel',{'0' '2' '4' '6' '8' '10' '12' '14' '16' '18' '20'});
% set([h1],'LineWidth',2.3,'MarkerSize',6.0);
% set([h2],'LineWidth',2.3,'MarkerSize',6.0);
% % 
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
% legend([h1 h11 h2 h22 ],'The first set of theoretical values','The first set of experimental values','The second set of theoretical values','The second set of experimental values');
legend([h3 h33 h4 h44 ],'The third set of theoretical values','The third set of experimental values','The fourth set of theoretical values','The fourth set of experimental values');
% legend([h5 h55 h6 h66 ],'The fifth set of theoretical values','The fifth set of experimental values','The sixth set of theoretical values','The sixth set of experimental values');
grid on;
