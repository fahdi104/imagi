clear all
clc
% Load stack data
% modified from BMurdianto Script
% fmaula - 21dec08

%load data
load data/synteticsatu.mat

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

% Set migration parameters, 3 km aperture
%for kirchoff, play around with this aperture parameter
aperturek=3000;
velfuck=0.9;

params = NaN*ones(1,5); params(1,1) = aperturek;

% Kirchhoff migration and plot
[arymig,tmig,xmig] = kirk_mig(seismogram,velfuck.*vrmst,t,x,params);
plotimage(arymig,tmig,xmig);
%save data/kirchoff90 xmig tmig arymig
