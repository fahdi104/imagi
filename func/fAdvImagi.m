function mAdvImagi;

%cla reset
subplot(1,1,1)
A = imread('lib/misc/demo.jpg');
image(A)

%set(gcf,'Color','white');
htxt=text(9,9,'[Imagi]');

axis off

set(htxt,'FontSize',36)
%set(htxt,'FontAngle','italic')
set(htxt,'Color',[ 0.000 0.251 0.502 ])
h2=text(22.6,22.38,'cheer up ... ! :D');
set(h2,'FontSize',11)
set(h2,'FontWeight','bold')
set(h2,'Color','white')
h3=text(27.7,27.33,'ver 0.1 by AGRSoft');
set(h3,'FontSize',10)
set(h3,'FontWeight','bold')
set(h3,'FontAngle','italic')
set(h3,'Color','white')
axis off

