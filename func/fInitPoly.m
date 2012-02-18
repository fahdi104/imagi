function [x,z,vmodel]=fInitPoly(x,z,vmodel)

imagesc(x,z,vmodel);
grid on
colormap('cool');
colorbar;
title('Velocity Model Building')
xlabel('offset');
ylabel('depth');
