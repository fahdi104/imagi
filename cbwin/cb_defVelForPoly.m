function [polyVel]=cb_defVelForPoly();

figure;
set(gcf,'Resize','off');
set(gcf,'MenuBar','none');
set(gcf,'Name','Define Polygon Velocity :');
set(gcf,'NumberTitle','off');
set(gcf,'Position',[250 250 350 250]);

textJudul1=['Define Polygon Velocity :'];
%disp(textJudul1);
axis off
text(0.02,0.85,textJudul1,'FontSize',12,'FontWeight','bold');

infoHorz1=['Set Polygon Velocity'];
infoHorz2=['Set Vel = '];

polyVel=1524;

text(0.02,0.75,infoHorz1,'FontSize',10);
text(0.02,0.65,infoHorz2,'FontSize',10);

tbpolyVel=uicontrol(gcf,'Style','edit', ...
   'Position',[120 150 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(polyVel),...
   'Callback','polyVel=get(gco,''String'');');

bDoCB=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[125 15 100 20], ...
   'String','OK',...
   'Callback','polyVel=str2num(polyVel); close(gcf);[x,z,vmodel]=dfDefPolygon(polyVel,x,z,dx,dz,vmodel);');

%   'Callback','close(gcf);dx=str2num(dx);dz=dx;xmax=str2numxmax);xmin=str2num(xmin);zmin=xmin;zmax=xmax;');

