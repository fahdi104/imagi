function [trc,t,seismogram,dt]=mfLoadVSP(plot)

[filename, pathname] = uigetfile('*.mat', 'Load Model MAT File');
readfilein=strcat(pathname,filename);
clear filename;
clear pathname;

%loading model MAT file
load(readfilein);

plot=1;

%imagesc(1:length(dataout),t,dataout);
%title('Rough Display');
if(plot==1)
    plotimage(t,trc,seismogram');
    title('your synthetic seismic');
    set(gcf,'Color','white')
    xlabel('Time');
    ylabel('Depth');
end
