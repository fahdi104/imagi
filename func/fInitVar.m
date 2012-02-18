function [xmin,xmax,dx,zmin,zmax,dz,x,z,vmodel]=fInitVar;

xmin=0;
xmax=100;
dx=10;

zmin=xmin;
zmax=xmax;
dz=dx;

x=xmin:dx:xmax;
z=zmin:dz:zmax;
vmodel=ones(length(x),length(x)); %replaced

