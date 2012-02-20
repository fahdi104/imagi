function  [rec]=cb_vLoadReceiver

[filename, pathname] = uigetfile('*.txt', 'Load Receiver List FIle');
readfilein=strcat(pathname,filename);
clear filename;
clear pathname;


rec=load(readfilein);

set(gcf,'Color','white');

