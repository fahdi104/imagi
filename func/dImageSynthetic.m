function dImageSynthetic(x,t,seismogram);

imagesc(x,t,seismogram)
title('Synthetic','FontSize',12,'FontWeight','bold')
xlabel('Offset');
ylabel('Time');
colormap('gray');
