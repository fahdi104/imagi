function dImageSynthetic(trc,t,seismogram);

imagesc(trc,t,seismogram)
title('Synthetic','FontSize',12,'FontWeight','bold')
xlabel('Offset');
ylabel('Time');
colormap('gray');
