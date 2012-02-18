clear all
clc
% Load stack data
% modified from BMurdianto Script
% fmaula - 21dec08

%load data
load data/syntetictangga2.mat

% Load velocity model
load data/vrmst.mat;

% Assign time and spatial axis
[m,n] = size(seismogram); 
% dt = 0.004;
% t = [0:dt:(m-1)*dt]';
% dx = 10; x = [0:dx:(n-1)*dx];

% Assign depth axis
[mm,nn] = size(vrmst);
% dz = dx; %in this case the same, please make sure for other case
% z = [0:mm-1]*dz';

% Set migration parameters
velfuck=1;

% PS MIG migration and plot
params=nan*ones(1,4);

[arymig]=ps_migt(seismogram,t,x,velfuck.*vrmst,params);
%%[arymig,tmig,xmig] = ps_mig(seismogram,vrmst(:,100),t,x,params);

plotimage(arymig,t,x);
xmig=x;
tmig=t;
%save data/psmigt80 xmig tmig arymig
