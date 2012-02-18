function dImagedata(x,z,vmodel,dx,dz);

imagesc(x,z,vmodel)
grid on
title('Velocity Model','FontSize',12,'FontWeight','bold')
xlabel('Offset');
ylabel('Depth');
colormap('cool');
colorbar;