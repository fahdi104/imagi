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
%this fk stolt is using 1D Velocity
%change this velocity scaling factor to suite your needs
velfuck=0.9;

% FK migration and plot
params=nan*ones(1,13);
params(9)=1;

[arymig,tmig,xmig] = vz_fkmig(seismogram,velfuck.*vrmst(:,100),t,x,params);

plotimage(arymig,tmig,xmig);
%save data/VzFKRMS xmig tmig arymig
