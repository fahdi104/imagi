function loadMenu(mainwin)

%load the menu

%menu-menu dibawah File
%nomenclature code=m
filem=uimenu(mainwin,'Label','File'); 
    mLoadModel=uimenu(filem,'Label','Load VelModel');
       set(mLoadModel,'Callback','[x,z,vmodel,dx,dz]=mfLoadModel(1);')
    
    mLoadSeismic=uimenu(filem,'Label','Load SeismicStack');
        set(mLoadSeismic,'Callback','[x,t,seismogram,dt]=mfLoadSeismic(1); ');
    mImageSeismic=uimenu(filem,'Label','Image SeismicStack');
        set(mImageSeismic,'Callback','dImageSynthetic(x,t,seismogram); ');
    mClearScreen=uimenu(filem,'Label','Clear Screen');
        set(mClearScreen,'Callback','cla reset; fAdvImagi');
        set(mClearScreen,'Separator','On');
    mCloseAll=uimenu(filem,'Label','Close Imagi');
        set(mCloseAll,'Callback','close(gcf);clear all');
        set(mCloseAll,'Separator','On');

%menu-menu dibawah Create Model
%nomenclature code=d
dispm=uimenu(mainwin,'Label','Create VelModel'); 
    dDefInitSetting=uimenu(dispm,'Label','Define InitialSetting');
        set(dDefInitSetting,'Callback','[xmin,xmax,dx,zmin,zmax,dz]=cb_dfDefInitSetting;')
    dDefPolygon=uimenu(dispm,'Label','Define Polygon');
        set(dDefPolygon,'Callback','[polyVel]=cb_defVelForPoly();')

    dResetModel=uimenu(dispm,'Label','Reset Model');
        set(dResetModel,'Callback','cla reset; vmodel=ones(length(x),length(x)).*1524;[x,z,vmodel]=fInitPoly(x,z,vmodel);');
        set(dResetModel,'Separator','On');

    dSaveModel=uimenu(dispm,'Label','Save Model');
        set(dSaveModel,'Callback','dSaveModel;')
    
    dClearScreen=uimenu(dispm,'Label','Clear Screen');
        set(dClearScreen,'Separator','On');
        set(dClearScreen,'Callback','cla reset; fAdvImagi');
        set(dClearScreen,'Separator','On');
   
   dCmapUtil=uimenu(dispm,'Label','ColorMap Util');
        dCallCmapeditor=uimenu(dCmapUtil,'Label','ColorMap Editor');
            set(dCallCmapeditor,'Callback','cmapeditor');
        dCallCmapUI=uimenu(dCmapUtil,'Label','Create ColorMap');    
            set(dCallCmapUI,'Callback','newcmap=cmapui;colormap(newcmap)');
        dResetCmap=uimenu(dCmapUtil,'Label','Reset ColorMap');    
            set(dResetCmap,'Callback','colormap(''default'');');   

    dMakeMyFrame=uimenu(dispm,'Label','Make My Frame'); 
        dMakeMyFrameSingle=uimenu(dMakeMyFrame,'Label','Single Frame');    
            set(dMakeMyFrameSingle,'Callback','subplot(1,1,1)');
        dMakeMyFrameHorz2=uimenu(dMakeMyFrame,'Label','2 Horz Frame');    
            set(dMakeMyFrameHorz2,'Callback','subplot(1,2,1),subplot(1,2,2)');
        dMakeMyFrameVert2=uimenu(dMakeMyFrame,'Label','2 Vert Frame');        
            set(dMakeMyFrameVert2,'Callback','subplot(2,1,1),subplot(2,1,2)');
            
    dMakeMyJPG=uimenu(dispm,'Label','Make My JPG');
        set(dMakeMyJPG,'Callback','dMakeMyJPG;')
        
        
%menu-menu dibawah Create Synthetic Data
%nomenclature code=s
synm=uimenu(mainwin,'Label','SyntheticSeismic'); 
    sExplRefl=uimenu(synm,'Label','FD Exploding Reflector');
        set(sExplRefl,'Callback','cb_sfSynExpRefl;');

    sSaveSynth=uimenu(synm,'Label','Save Syntetic');
        set(sSaveSynth,'Callback','dSaveSynthetic;')
 
%menu-menu dibawah Processing
%nomenclature code=p
pProc=uimenu(mainwin,'Label','Processing'); 
    pVintz2Vrmst=uimenu(pProc,'Label','VINTZ -> VRMST');
        set(pVintz2Vrmst,'Callback','fAdvImagi');