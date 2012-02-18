clear all
clc
% Load stack data
% modified from BMurdianto Script
% fmaula - 21dec08

%load data
load data/synteticsatu.mat

% Load velocity model
load data/modelsatu.mat;

% Assign time and spatial axis
[m,n] = size(seismogram); 
%dt = 0.004;
% t = [0:dt:(m-1)*dt]';
% dx = 10; x = [0:dx:(n-1)*dx];



% Assign depth axis
[mm,nn] = size(vmodel);
% dz = dx; %in this case the same, please make sure for other case
% %z = [0:mm-1]*dz';

% Convert Velocity depth model to Time Domain
velt=[];
vrmst=[];
h = waitbar(0,'Please wait...');

%tmaxtwt=round(2.*(max(max(z)))/(min(min(vel))));
tmaxtwt=max(t);
for i=1:length(vmodel)
    waitbar(i/length(vmodel),h)
    t4tzcurve=vint2t(vmodel(:,i),z);
    %tzcurve=[t4tzcurve.*2 z'];
    %[velocitiest1,t1]=depth2time(vel(:,i),z,tzcurve,dt);
    vel1 = interp1(2.*t4tzcurve,vmodel(:,i),t,'spline');
    vrmst(:,i)=vint2vrms(vel1,t);
    %velt=[velt,velocitiest1];
end
close(h)
%load winterFlip
whitefig
imagesc(x,t,vrmst);
colorbar
a=xlabel('Offset (m)');set(a,'FontWeight','bold'); set(a,'FontSize',10);
b=ylabel('Depth (m)');set(b,'FontWeight','bold'); set(b,'FontSize',10);
c=title('RMS Velocity Model for Migration');set(c,'FontWeight','bold'); set(c,'FontSize',12);

%output vrmst 
save data/vrmst.mat x t vrmst 


% %test migration
% % Set migration parameters, 3 km aperture
% params = NaN*ones(1,5); params(1,1) = 3000;
% 
% % VZ FK on INT vrms migration and plot
% 
% params=nan*ones(1,13);
% params(9)=1;
% 
% [arymig,tmig,xmig] = vz_fkmig(seismogram,vrmst(:,100),t,x,params);
% 
% plotimage(arymig,tmig,xmig);
% %save VzFKRMS xmig tmig arymig
