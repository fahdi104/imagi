function  [jpgfile]=dMakeMyJPG

figure

set(gcf,'Resize','off');
set(gcf,'MenuBar','none');
set(gcf,'Name','Please Make My JPG');
set(gcf,'NumberTitle','off');
%set(gcf,'Position',[332 458 280 170]);
set(gcf,'Position',[250 250 280 170]);

axis off
text(-0.1,0.92,'Please Specify JPG filename?');


curDir=pwd;
fileOut=strcat(curDir,'\data\','MyJPG.jpg');

tbSaveSUfile=uicontrol(gcf,'Style','edit', ...
   'Position',[10 100 250 20], ...
   'BackgroundColor','white',...
   'String',fileOut,...
   'Callback','jpgfile=[];jpgfile=get(gco,''String'');');

bDoT2D=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[10 10 50 20], ...
   'String','OK',...
   'Callback','close(gcf);saveas(gcf,jpgfile,''jpg'');');

bDoT2D=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[80 10 50 20], ...
   'String','Cancel',...
   'Callback','close(gcf)');