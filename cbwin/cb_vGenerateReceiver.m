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

infoHorz1=['Generate list of receiver'];
infoHorz2=['Lets try for vertical well case first  '];
infoHorz3=['X Receiver             = '];
infoHorz4=['Z of 1st Receiver    ='];
infoHorz5=['Receiver Spacing   = '];
infoHorz6=['- just important value'];


text(0.02,0.85,infoHorz1,'FontSize',10);
text(0.02,0.75,infoHorz2,'FontSize',10);
text(0.02,0.65,infoHorz3,'FontSize',10);
text(0.02,0.55,infoHorz4,'FontSize',10);
text(0.02,0.45,infoHorz5,'FontSize',10);
text(0.02,0.35,infoHorz6,'FontSize',10,'Color','red');
text(0.02,0.25,'Please Specify Model (*.mat) filename?');


xrec=1000;
zrec1=500;
dzrec=15;

tbdtstep=uicontrol(gcf,'Style','edit', ...
   'Position',[220 220 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(xrec),...
   'Callback','xrec=get(gco,''String'');');

tbdt=uicontrol(gcf,'Style','edit', ...
   'Position',[220 190 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(zrec1),...
   'Callback','zrec1=get(gco,''String'');');

tbtmax=uicontrol(gcf,'Style','edit', ...
   'Position',[220 160 50 20], ...
   'BackgroundColor','white',...
   'String',num2str(dzrec),...
   'Callback','dzrec=get(gco,''String'');');


bDoCB=uicontrol(gcf,'Style','pushbutton', ...
   'Position',[125 15 100 20], ...
   'String','OK',...
   'Callback','close(gcf); dtstep=str2num(dtstep); dt=str2num(dt); tmax=str2num(tmax); bpfpoint=str2num(bpfpoint);  [x,t,seismogram]=fSynExplRefl(dx,dtstep,dt,tmax,vmodel,x,bpfpoint);');
