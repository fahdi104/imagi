function [xmin,xmax,dx,zmin,zmax,dz,x,z,vmodel]=cb_vVSPShotRec(rec);



figure;
set(gcf,'Resize','off');
set(gcf,'MenuBar','none');
set(gcf,'Name','Define Exploding Reflector ');
set(gcf,'NumberTitle','off');
set(gcf,'Position',[250 250 350 350]);

textJudul1=['Acoustic Finite Difference :'];

axis off
text(0.02,0.95,textJudul1,'FontSize',12,'FontWeight','bold');

infoHorz1=['Set Required Parameter for FD Modeling'];
infoHorz2=['Source Offset               ='];
infoHorz3=['Set dtstep for FD          = '];
infoHorz4=['Set dt for sampling rate = '];
infoHorz5=['Set T max                    = '];
infoHorz6=['Bandpass Point [- - - -]  = '];
infoHorz7=['- just important value'];
infoHorz8=['- set the rest to default - need update alot'];


text(0.02,0.85,infoHorz1,'FontSize',10);
text(0.02,0.75,infoHorz2,'FontSize',10);
text(0.02,0.65,infoHorz3,'FontSize',10);
text(0.02,0.55,infoHorz4,'FontSize',10);
text(0.02,0.45,infoHorz5,'FontSize',10);
text(0.02,0.35,infoHorz6,'FontSize',10);
text(0.02,0.25,infoHorz7,'FontSize',10,'Color','red');
text(0.02,0.15,infoHorz8,'FontSize',10,'Color','red');
% text(0.02,0.40,'fmin  :','FontSize',10);
% text(0.02,0.25,'fmax :','FontSize',10);

% [seismogram,seis,t]=afd_explode(dx,dtstep,dt,tmax,vel,x,zeros(size(x)),...
%     [6 12 80 90],0,2);

dtstep=0.001;
dt=0.004;
%tmax=round(max(z)/(min(min(vmodel))));
tmax=2;
bpfpoint=[5 8 40 50];
offset=rec(1,1)+50;

tbdoffset=uicontrol(gcf,'Style','edit', ...
   'Position',[220 245 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(offset),...
   'Callback','offset=get(gco,''String'');offset=str2num(offset);figure(mainwin);plot(offset,0,''r*'')');

tbdtstep=uicontrol(gcf,'Style','edit', ...
   'Position',[220 215 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(dtstep),...
   'Callback','dtstep=get(gco,''String'');');

tbdt=uicontrol(gcf,'Style','edit', ...
   'Position',[220 185 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(dt),...
   'Callback','dt=get(gco,''String'');');

tbtmax=uicontrol(gcf,'Style','edit', ...
   'Position',[220 155 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(tmax),...
   'Callback','tmax=get(gco,''String'');');

tbbpfpoint=uicontrol(gcf,'Style','edit', ...
   'Position',[220 125 70 20], ...
   'BackgroundColor','white',...
   'String',num2str(bpfpoint),...
   'Callback','bpfpoint=get(gco,''String'');');

bDoCB=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[125 40 100 20], ...
   'String','OK',...
   'Callback','close(gcf); dtstep=str2num(dtstep); dt=str2num(dt); tmax=str2num(tmax); bpfpoint=str2num(bpfpoint); [trc,t,seismogram]=vVSPFDShotRec(dx,dtstep,dt,tmax,vmodel,x,rec,offset,bpfpoint);');
