function [x,z,vmodel,dx,dz]=mfLoadModel(plot)

[filename, pathname] = uigetfile('*.mat', 'Load Model MAT File');
readfilein=strcat(pathname,filename);
clear filename;
clear pathname;

%loading model MAT file
load(readfilein);


set(gcf,'Color','white');
%imagesc(1:length(dataout),t,dataout);
%title('Rough Display');
if(plot==1)
    dImagedata(x,z,vmodel,dx,dz);
end


