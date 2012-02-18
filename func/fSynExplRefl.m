function [x,t,seismogram]=fSynExplRefl(dx,dtstep,dt,tmax,vmodel,x,bpfpoint)

% Make stacked section of velocity model using exploding reflector from
% CREWES
% modified from BMurdianto script
% - fmaula (21 Dec 08)
%clear all

% load velocity model
%load SaltDome

% set grid size, time step, sample rate and recording length
[m,n]=size(vmodel);
%dtstep=.001;dt=.004;tmax=2;

% x and z coordinates of the model
%x=[0:n-1]*dx;z=[0:m-1]*dz;

[seismogram,seis,t]=afd_explode(dx,dtstep,dt,tmax,vmodel,x,zeros(size(x)),...
    bpfpoint,0,2);

seisimage(seismogram,t,x);

% Save output data (optional)
%save 'SaltDome_explRefl' seismogram t x