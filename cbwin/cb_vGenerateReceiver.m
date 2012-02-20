function  [matfile]=cb_vGenerateReceiver

figure;
set(gcf,'Resize','off');
set(gcf,'MenuBar','none');
set(gcf,'Name','Generate list of receiver');
set(gcf,'NumberTitle','off');
set(gcf,'Position',[250 250 350 350]);

textJudul1=['Generate list of receiver :'];
%disp(textJudul1);
axis off
text(0.02,0.95,textJudul1,'FontSize',12,'FontWeight','bold');

infoHorz1=['Lets try for vertical well case first,'];
infoHorz2=['Number of receiver is automatically computed  '];
infoHorz3=['Receiver Offset          = '];
infoHorz4=['Z of 1st Receiver        ='];
infoHorz5=['Z of Last Receiver      = '];
infoHorz6=['Receiver Spacing       = '];
%infoHorz6=['- You can edit the text file later'];


text(0.02,0.85,infoHorz1,'FontSize',10);
text(0.02,0.75,infoHorz2,'FontSize',10);
text(0.02,0.65,infoHorz3,'FontSize',10);
text(0.02,0.55,infoHorz4,'FontSize',10);
text(0.02,0.45,infoHorz5,'FontSize',10);
text(0.02,0.35,infoHorz6,'FontSize',10);

text(0.02,0.25,'Please Receiver List (*.txt) filename?');


xrec=1000;
zrec1=500;
zrecn=2000;
dzrec=15;
fileout='test';

tbxrec=uicontrol(gcf,'Style','edit', ...
   'Position',[220 220 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(xrec),...
   'Callback','xrec=get(gco,''String'');');

tbzrec1=uicontrol(gcf,'Style','edit', ...
   'Position',[220 190 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(zrec1),...
   'Callback','zrec1=get(gco,''String'');');

tbzrecn=uicontrol(gcf,'Style','edit', ...
   'Position',[220 160 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(zrecn),...
   'Callback','zrecn=get(gco,''String'');');

tbdzrec=uicontrol(gcf,'Style','edit', ...
   'Position',[220 130 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(dzrec),...
   'Callback','dzrec=get(gco,''String'');');



curDir=pwd;
fileOut=strcat(curDir,'\data\','receiver.txt');

tbSaveSUfile=uicontrol(gcf,'Style','edit', ...
   'Position',[50 80 250 20], ...
   'BackgroundColor','white',...
   'String',fileOut,...
   'Callback','fileOut=[];fileOut=get(gco,''String'');');

%%need to rewrite this callback to single function
bDoCB=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[50 40 40 30], ...
   'String','OK',...
   'Callback','zrec=str2num(zrec1):str2num(dzrec):str2num(zrecn);xrec=(str2num(xrec)).*ones(size((zrec)));rec=[xrec; zrec]; close(gcf);fid = fopen(fileOut, ''wt'');fprintf(fid, ''%6.2f  %12.8f\n'', rec);fclose(fid);hold on;plot(rec(1,:),rec(2,:),''rv'');rec=rec'';');
