function [trc,t,seismogram]=vVSPFDShotRec(dx,dtstep,dt,tmax,vmodel,x,rec,offset,bpfpoint)

% Make stacked section of velocity model using exploding reflector from
% CREWES
% modified from BMurdianto script
% - fmaula (21 Dec 08)
%clear all

% load velocity model
%load SaltDome

% set grid size, time step, sample rate and recording length
[m,n]=size(vmodel);

%source specification start here
snap1=zeros(size(vmodel));
snap2=snap1; ix=near(x,offset);
snap2(1,ix(1))=1;
lap=2;

[seismogram,seis,t]=afd_shotrec(dx,dtstep,dt,tmax, vmodel,snap1,snap2,rec(:,1)',rec(:,2)',bpfpoint,0,lap);
trc=rec(:,2);
seisimage(seismogram',rec(:,2),t);

% Save output data (optional)
%save 'SaltDome_explRefl' seismogram t x