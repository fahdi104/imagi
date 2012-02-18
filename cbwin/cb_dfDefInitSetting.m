function [xmin,xmax,dx,zmin,zmax,dz,x,z,vmodel]=cb_dfDefInitSEtting(reset);



figure;
set(gcf,'Resize','off');
set(gcf,'MenuBar','none');
set(gcf,'Name','Define Initial Setting');
set(gcf,'NumberTitle','off');
set(gcf,'Position',[250 250 350 350]);

textJudul1=['Define Initial Setting :'];
%disp(textJudul1);
axis off
text(0.02,0.85,textJudul1,'FontSize',12,'FontWeight','bold');

infoHorz1=['Set Horizontal & Vertical  Distance (min and max)'];
infoHorz2=['Set dz = dx '];
infoHorz3=['Set XMin = '];
infoHorz4=['Set XMax = '];
infoHorz5=['Set ZMin = XMin '];
infoHorz6=['Set ZMax = XMax'];
infoHorz7=['Background Velocity 1524'];
infoHorz8=['For the time being X dim = Z Dim'];


text(0.02,0.75,infoHorz1,'FontSize',10);
text(0.02,0.65,infoHorz2,'FontSize',10);
text(0.02,0.55,infoHorz3,'FontSize',10);
text(0.02,0.45,infoHorz4,'FontSize',10);
text(0.02,0.35,infoHorz5,'FontSize',10);
text(0.02,0.25,infoHorz6,'FontSize',10);
text(0.02,0.15,infoHorz7,'FontSize',10,'Color','red');
text(0.02,0.05,infoHorz8,'FontSize',10,'Color','red');
% text(0.02,0.40,'fmin  :','FontSize',10);
% text(0.02,0.25,'fmax :','FontSize',10);

dx=10;
dz=dx;
xmin=0;
xmax=3000;
zmin=xmin;
zmax=xmax;
x=xmin:dx:xmax;
z=zmin:dz:zmax;

vmodel=ones(length(x),length(x)).*1524; %replaced

tbdx=uicontrol(gcf,'Style','edit', ...
   'Position',[130 215 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(dx),...
   'Callback','dx=get(gco,''String'');');

tbxmin=uicontrol(gcf,'Style','edit', ...
   'Position',[130 185 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(xmin),...
   'Callback','xmin=get(gco,''String'');');

tbxmax=uicontrol(gcf,'Style','edit', ...
   'Position',[130 160 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(xmax),...
   'Callback','xmax=get(gco,''String'');');

bDoCB=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[125 15 100 20], ...
   'String','OK',...
   'Callback','dx=str2num(dx); dz=dx; xmin=str2num(xmin); zmin=xmin; xmax=str2num(xmax); zmax=xmax; x=xmin:dx:xmax; z=zmin:dx:zmax; close(gcf);  vmodel=ones(length(x),length(x)).*1524;[x,z,vmodel]=fInitPoly(x,z,vmodel);');

%   'Callback','close(gcf);dx=str2num(dx);dz=dx;xmax=str2numxmax);xmin=str2num(xmin);zmin=xmin;zmax=xmax;');


