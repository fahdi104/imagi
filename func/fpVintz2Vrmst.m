function [xvel,tvel,vrmst]=fpVintz2Vrmst(velfile,seisfile)

% clear all
% clc
% Load stack data
% modified from BMurdianto Script
% fmaula - 21dec08

%load SaltDome_explRefl.mat

[x,z,vmodel,dx,dz]=mfLoadModel(plot)

% Assign time and spatial axis
% [m,n] = size(seismogram); 
% dt = 0.004;
% t = [0:dt:(m-1)*dt]';
% dx = 10; x = [0:dx:(n-1)*dx];

% Load velocity model
%load SaltDome;

% Assign depth axis
[mm,nn] = size(vmodel);
%dz = dx; %in this case the same, please make sure for other case
%z = [0:mm-1]*dz';

% Convert Velocity depth model to Time Domain
velt=[];
vrmst=[];
h = waitbar(0,'Please wait...');

tmaxtwt=round(2.*(max(max(z)))/(min(min(vel))));
tmaxtwt=1.9960;
for i=1:length(vel)
    waitbar(i/length(vel),h)
    t4tzcurve=vint2t(vel(:,i),z);
    %tzcurve=[t4tzcurve.*2 z'];
    %[velocitiest1,t1]=depth2time(vel(:,i),z,tzcurve,dt);
    vel1 = interp1(2.*t4tzcurve,vel(:,i),t,'spline');
    vrmst(:,i)=vint2vrms(vel1,t);
    %velt=[velt,velocitiest1];
end