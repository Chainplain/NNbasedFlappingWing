clear all;
close all;
FILEdata=fopen('Alldata617H1705.log');
data = fread(FILEdata,'float');
leng = 87; %1-16 84
starttime =2;
endtime = 47;
frame = 50;
x= [data(starttime*frame*leng+1:leng:endtime*frame*leng); nan];
y = [data(starttime*frame*leng+2:leng:endtime*frame*leng); nan];
z = [data(starttime*frame*leng+3:leng:endtime*frame*leng); nan];
% backtime = min(find(sqrt(x.^2+y.^2)<500))./frame;
% backdistxy = norm()


alpha = data(starttime*frame*leng+4:leng:endtime*frame*leng);
beta = data(starttime*frame*leng+5:leng:endtime*frame*leng);
gama = data(starttime*frame*leng+6:leng:endtime*frame*leng);
input1 = data(starttime*frame*leng+7:leng:endtime*frame*leng);
input2 = data(starttime*frame*leng+8:leng:endtime*frame*leng);
input3 = data(starttime*frame*leng+9:leng:endtime*frame*leng);

RadVec=deg2rad([alpha,beta,gama]);
%Quat=zeros(size([alpha,alpha,alpha,alpha]));
Quat=[cos(RadVec(:,1)/2).*cos(RadVec(:,2)/2).*cos(RadVec(:,3)/2)+...
    sin(RadVec(:,1)/2).*sin(RadVec(:,2)/2).*sin(RadVec(:,3)/2),...
    sin(RadVec(:,1)/2).*cos(RadVec(:,2)/2).*cos(RadVec(:,3)/2)-...
    cos(RadVec(:,1)/2).*sin(RadVec(:,2)/2).*sin(RadVec(:,3)/2),...
    cos(RadVec(:,1)/2).*sin(RadVec(:,2)/2).*cos(RadVec(:,3)/2)+...
    sin(RadVec(:,1)/2).*cos(RadVec(:,2)/2).*sin(RadVec(:,3)/2),...
    cos(RadVec(:,1)/2).*cos(RadVec(:,2)/2).*sin(RadVec(:,3)/2)-...
    sin(RadVec(:,1)/2).*sin(RadVec(:,2)/2).*cos(RadVec(:,3)/2)];


Velx = data(starttime*frame*leng+10:leng:endtime*frame*leng);
Vely = data(starttime*frame*leng+11:leng:endtime*frame*leng);
Velz = data(starttime*frame*leng+12:leng:endtime*frame*leng);

Wei1_1 = data(starttime*frame*leng+13:leng:endtime*frame*leng);
Wei1_2 = data(starttime*frame*leng+14:leng:endtime*frame*leng);
Wei1_3 = data(starttime*frame*leng+15:leng:endtime*frame*leng);
Wei1_4 = data(starttime*frame*leng+16:leng:endtime*frame*leng);
Wei1_5 = data(starttime*frame*leng+17:leng:endtime*frame*leng);
Wei1_6 = data(starttime*frame*leng+18:leng:endtime*frame*leng);
Wei1_7 = data(starttime*frame*leng+19:leng:endtime*frame*leng);
Wei1_8 = data(starttime*frame*leng+20:leng:endtime*frame*leng);
Wei1_9 = data(starttime*frame*leng+21:leng:endtime*frame*leng);

Wei2_1 = data(starttime*frame*leng+22:leng:endtime*frame*leng);
Wei2_2 = data(starttime*frame*leng+23:leng:endtime*frame*leng);
Wei2_3 = data(starttime*frame*leng+24:leng:endtime*frame*leng);
Wei2_4 = data(starttime*frame*leng+25:leng:endtime*frame*leng);
Wei2_5 = data(starttime*frame*leng+26:leng:endtime*frame*leng);
Wei2_6 = data(starttime*frame*leng+27:leng:endtime*frame*leng);
Wei2_7 = data(starttime*frame*leng+28:leng:endtime*frame*leng);
Wei2_8 = data(starttime*frame*leng+29:leng:endtime*frame*leng);
Wei2_9 = data(starttime*frame*leng+30:leng:endtime*frame*leng);

Wei3_1 = data(starttime*frame*leng+31:leng:endtime*frame*leng);
Wei3_2 = data(starttime*frame*leng+32:leng:endtime*frame*leng);
Wei3_3 = data(starttime*frame*leng+33:leng:endtime*frame*leng);
Wei3_4 = data(starttime*frame*leng+34:leng:endtime*frame*leng);
Wei3_5 = data(starttime*frame*leng+35:leng:endtime*frame*leng);
Wei3_6 = data(starttime*frame*leng+36:leng:endtime*frame*leng);
Wei3_7 = data(starttime*frame*leng+37:leng:endtime*frame*leng);
Wei3_8 = data(starttime*frame*leng+38:leng:endtime*frame*leng);
Wei3_9 = data(starttime*frame*leng+39:leng:endtime*frame*leng);

Wei4_1 = data(starttime*frame*leng+40:leng:endtime*frame*leng);
Wei4_2 = data(starttime*frame*leng+41:leng:endtime*frame*leng);
Wei4_3 = data(starttime*frame*leng+42:leng:endtime*frame*leng);
Wei4_4 = data(starttime*frame*leng+43:leng:endtime*frame*leng);
Wei4_5 = data(starttime*frame*leng+44:leng:endtime*frame*leng);
Wei4_6 = data(starttime*frame*leng+45:leng:endtime*frame*leng);
Wei4_7 = data(starttime*frame*leng+46:leng:endtime*frame*leng);
Wei4_8 = data(starttime*frame*leng+47:leng:endtime*frame*leng);
Wei4_9 = data(starttime*frame*leng+48:leng:endtime*frame*leng);

Wei5_1 = data(starttime*frame*leng+49:leng:endtime*frame*leng);
Wei5_2 = data(starttime*frame*leng+50:leng:endtime*frame*leng);
Wei5_3 = data(starttime*frame*leng+51:leng:endtime*frame*leng);
Wei5_4 = data(starttime*frame*leng+52:leng:endtime*frame*leng);
Wei5_5 = data(starttime*frame*leng+53:leng:endtime*frame*leng);
Wei5_6 = data(starttime*frame*leng+54:leng:endtime*frame*leng);
Wei5_7 = data(starttime*frame*leng+55:leng:endtime*frame*leng);
Wei5_8 = data(starttime*frame*leng+56:leng:endtime*frame*leng);
Wei5_9 = data(starttime*frame*leng+57:leng:endtime*frame*leng);

Wei6_1 = data(starttime*frame*leng+58:leng:endtime*frame*leng);
Wei6_2 = data(starttime*frame*leng+59:leng:endtime*frame*leng);
Wei6_3 = data(starttime*frame*leng+60:leng:endtime*frame*leng);
Wei6_4 = data(starttime*frame*leng+61:leng:endtime*frame*leng);
Wei6_5 = data(starttime*frame*leng+62:leng:endtime*frame*leng);
Wei6_6 = data(starttime*frame*leng+63:leng:endtime*frame*leng);
Wei6_7 = data(starttime*frame*leng+64:leng:endtime*frame*leng);
Wei6_8 = data(starttime*frame*leng+64:leng:endtime*frame*leng);
Wei6_9 = data(starttime*frame*leng+66:leng:endtime*frame*leng);


hybridw = data(starttime*frame*leng+67:leng:endtime*frame*leng);

vxd = data(starttime*frame*leng+68:leng:endtime*frame*leng);
vyd = data(starttime*frame*leng+69:leng:endtime*frame*leng);
vzd = data(starttime*frame*leng+70:leng:endtime*frame*leng);
vxd2 = data(starttime*frame*leng+71:leng:endtime*frame*leng);
vpd = data(starttime*frame*leng+72:leng:endtime*frame*leng);
TxRBF = data(starttime*frame*leng+73:leng:endtime*frame*leng);
Txfeed = data(starttime*frame*leng+74:leng:endtime*frame*leng);
TyRBFG = data(starttime*frame*leng+75:leng:endtime*frame*leng)./50;
TyRBF = data(starttime*frame*leng+76:leng:endtime*frame*leng)./50;
Tyfeed = data(starttime*frame*leng+77:leng:endtime*frame*leng)./50;
TzRBF = data(starttime*frame*leng+78:leng:endtime*frame*leng);
Tzfeed = data(starttime*frame*leng+79:leng:endtime*frame*leng);
FxRBF = data(starttime*frame*leng+80:leng:endtime*frame*leng);
Fxfeed = data(starttime*frame*leng+81:leng:endtime*frame*leng);
FpRBFG = data(starttime*frame*leng+82:leng:endtime*frame*leng).*15;
FpRBF = data(starttime*frame*leng+83:leng:endtime*frame*leng).*15;
Fpfeed = data(starttime*frame*leng+84:leng:endtime*frame*leng).*15;
FsRBF = zeros(size(Fpfeed));
rrRBF = zeros(size(Fpfeed));


Fsfeed = zeros(size(Fpfeed));
rrfeed = zeros(size(Fpfeed));


FsRBF(hybridw>0.5) = TxRBF(hybridw>0.5);
FsRBF(hybridw<0.5) = FxRBF(hybridw<0.5);
Fsfeed(hybridw>0.5) = Txfeed(hybridw>0.5);
Fsfeed(hybridw<0.5) = Fxfeed(hybridw<0.5);

rrRBF(hybridw>0.5) = TyRBF(hybridw>0.5);
rrRBF(hybridw<0.5) = FpRBF(hybridw<0.5);
rrfeed(hybridw>0.5) = Tyfeed(hybridw>0.5);
rrfeed(hybridw<0.5) = Fpfeed(hybridw<0.5);


FcRBF = TzRBF;
Fcfeed = Tzfeed;



t=[(1:length(x)-1)'; nan];

h=figure();
set(h,'position',[100 100 600 400]);

patch(x./1000,y./1000,z./1000,t./50,'edgecolor','interp','facecolor','none','LineWidth',1.5);



h = colorbar( );
newlabel = get(h,'YTickLabel');
newlabel = strcat(newlabel,' s');
set(h,'YTickLabel',newlabel);
% xlabel('m');ylabel('m');
% patch(x,y,-1000*ones(size(x)),t,'edgecolor','interp','facecolor','none','LineWidth',1);
% patch(x,1500*ones(size(x)),z,t,'edgecolor','interp','facecolor','none','LineWidth',1);
% patch(2500*ones(size(x)),y,z,t,'edgecolor','interp','facecolor','none','LineWidth',1);
 axis([-2500 2500 -2500 2500 -1000 2000]./1000);
view([0,0,1])
% title('trajectory');
text(x(1)./1000,y(1)./1000,z(1)./1000,'Start','FontSize',15);
text(x(end-1)./1000,y(end-1)./1000,z(end-1)./1000+0.1,'End','FontSize',15);
grid on;
h =figure();
set(h,'position',[100 100 550 550]);
timee=[0.02:0.02:size(t,1)*0.02-0.02]';
subplot(4,1,1);
plot(timee,x(1:end-1)./1000,'LineWidth',1.5);
hold on;
plot(timee,y(1:end-1)./1000,'LineWidth',1.5);

plot(timee,0*ones(size(timee)),'LineWidth',1.5);


legend('Real x','Real y','Desired xy');
%ylabel('Height(m)');
axis([0 endtime-starttime -1 2]);

subplot(4,1,2);
plot(timee,z(1:end-1)./1000,'LineWidth',1.5);
hold on;
plot(timee,1.5*ones(size(timee)),'LineWidth',1.5);
axis([0 endtime-starttime 0 2.5]);
legend('Real z','Desired z');

count =0;
for i = 2 : size(timee,1)
    if (Quat(i,:) - Quat(i-1,:))* (Quat(i,:) - Quat(i-1,:))' > (Quat(i,:) + Quat(i-1,:))* (Quat(i,:) + Quat(i-1,:))'
        Quat(i,:) = -Quat(i,:);
        count=count+1;
    end
end

% flip = find(sum(([zeros(1,4);Quat]-[Quat;zeros(1,4)]).^2,2)>sum(([zeros(1,4);Quat]+[Quat;zeros(1,4)]).^2,2));
% Sign = zeros(size(alpha));
% for i =1:size(flip,1)
% Sign(1:flip(i)) = Sign(1:flip(i)) + 1;
% end
% Sign = 2 * mod(Sign,2) - 1;


subplot(4,1,3);
% Quatt=Quat.*Sign;

plot(timee,Quat,'LineWidth',1);
legend('q_0','q_1','q_2','q_3');
%ylabel('Euler angles');
axis([0 endtime-starttime -1.1 1.1]);
subplot(4,1,4);
plot(timee,[Velx,Vely,Velz]./1000,'LineWidth',1.5);
xlabel('Time(s)');
%ylabel('Speed(m/s)');
legend('v_{x}','v_{y}','v_{z}');

h=figure();
subplot(2,1,1);
plot(timee,[(input1-1000)./1000,((input2-1000)./1000-0.5).*2,((input3-1000)./1000-0.5).*2],'LineWidth',1.5);
axis([0 endtime-starttime -1.5 1.5]);
legend('FA','HT','VT');



% Velx
subplot(2,1,2);
plot(timee,(hybridw+1)./2,'LineWidth',1.5);
axis([0 endtime-starttime -0.5 1.5]);
xlabel('Time(s)');
%ylabel('Input');
% xlabel('Time(s)');
% axis([0 endtime-starttime -1 1]);
set(h,'position',[100 100 550 250]);

h=figure('Name','w1');

Wei1 = [Wei1_1,Wei1_2,Wei1_3,Wei1_4,Wei1_5,Wei1_6,Wei1_7,Wei1_8,Wei1_9];
Wei2 = [Wei2_1,Wei2_2,Wei2_3,Wei2_4,Wei2_5,Wei2_6,Wei2_7,Wei2_8,Wei2_9];
Wei3 = [Wei3_1,Wei3_2,Wei3_3,Wei3_4,Wei3_5,Wei3_6,Wei3_7,Wei3_8,Wei3_9];
Wei4 = [Wei4_1,Wei4_2,Wei4_3,Wei4_4,Wei4_5,Wei4_6,Wei4_7,Wei4_8,Wei4_9];
Wei5 = [Wei5_1,Wei5_2,Wei5_3,Wei5_4,Wei5_5,Wei5_6,Wei5_7,Wei5_8,Wei5_9];
Wei6 = [Wei6_1,Wei6_2,Wei6_3,Wei6_4,Wei6_5,Wei6_6,Wei6_7,Wei6_8,Wei6_9];

set(h,'position',[100 100 550 300]);
subplot(3,1,1);
plot(timee,Wei1,'LineWidth',1);xlim([0 endtime-starttime]);
subplot(3,1,2);
plot(timee,Wei2,'LineWidth',1);xlim([0 endtime-starttime]);
subplot(3,1,3);
plot(timee,Wei3,'LineWidth',1);xlim([0 endtime-starttime]);

h=figure('Name','w2');
set(h,'position',[100 100 550 300]);
subplot(3,1,1);
plot(timee,Wei4,'LineWidth',1);xlim([0 endtime-starttime]);
subplot(3,1,2);
plot(timee,Wei5,'LineWidth',1);xlim([0 endtime-starttime]);
subplot(3,1,3);xlim([0 20]);
plot(timee,Wei6,'LineWidth',1);xlim([0 endtime-starttime]);

h=figure('Name','VelocityD');
set(h,'position',[100 100 550 250]);
plot(timee,[vxd,vxd2,vyd,vzd],'LineWidth',1.5);
legend('FT v_{xd}','FF v_{xd}','FT v_{xd}', 'v_{zd} ');

h=figure('Name','PsiD');
set(h,'position',[100 100 550 250]);
plot(timee,vpd,'LineWidth',1.5);

h=figure('Name','Cons');
set(h,'position',[100 100 550 300]);
subplot(3,1,1);plot(timee,[FsRBF,Fsfeed],'LineWidth',1.5);legend('RBF','FB');
subplot(3,1,2);plot(timee,[rrRBF,rrfeed]./3.5,'LineWidth',1.5);
subplot(3,1,3);plot(timee,[FcRBF,Fcfeed],'LineWidth',1.5);


fclose(FILEdata);