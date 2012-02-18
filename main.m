%function main

%desc: Imagi launcher
%input: none
%output: GUI window
%last update: fhd104@24-Dec-08 : initialize

%sorry to clear all
clear all

global mainwin;

mainwin=figure;

%define GUI Window
set(gcf,'Color','white')
set(gcf,'NumberTitle','off');
set(gcf,'Name','[agrsoft-imagi] ver 0.1 _ simple Seismic Modeling Exercise');
set(gcf,'MenuBar','none');

%initialize required directory
folderdata=strcat(pwd,'\data\');
folderfunc=strcat(pwd,'\func');
foldercbwin=strcat(pwd,'\cbwin\');
folderlib=strcat(pwd,'\lib\');

addpath(folderdata)
addpath(folderfunc)
addpath(foldercbwin)
addpath(folderlib)

%launch menu
wLoadMenu(mainwin);

%display advertising
[xmin,xmax,dx,zmin,zmax,dz,x,z,vmodel]=fInitVar();
fAdvImagi;