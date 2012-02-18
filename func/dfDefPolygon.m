function [x,z,vmodel]=dfDefPolygon(vel,x,z,dx,dz,vmodel)

vel

imagesc(x,z,vmodel);
grid on
colorbar;
colormap('cool');
hold on

pxy=[];
button=1;
n=0;
while(button~=3)
    [p10x,p10y,button]=ginput(1);
    plot(p10x,p10y,'ro');
    n=n+1;
    pxy(:,n)=[p10x,p10y];
end

plot(pxy(1,:),pxy(2,:),'m-');
hold on
vmodel=afd_vmodel2(dx,dz,vmodel,vel,pxy(1,:),pxy(2,:));
imagesc(x,z,vmodel);
colorbar;
colormap('cool');
