function dImageVSP(trc,t,seismogram);

imagesc(t,trc,seismogram')
title('Synthetic','FontSize',12,'FontWeight','bold')
xlabel('Time');
ylabel('Depth');
colormap('gray');
