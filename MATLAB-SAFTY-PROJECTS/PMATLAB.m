clear,clc,close all

PtA = [1,2];

R=3;

N_cyc = 2; % Number of cycles

Trace_inc = 20;

theta = (1:360)*pi/180;

PtB = [PtA(1)+R*cos(theta); PtA(2)+R*sin(theta)]; % End of the crank

BoxSide = R/4;

xB1=PtB(1,1)- BoxSide/2;

xB2=PtB(1,:) + BoxSide/2;

yB1=PtB(2,:)-BoxSide/2;

yB2=PtB(2,:) + BoxSide/2;

figure(1)

hold on

plot(PtA(1),PtA(2), 'ko', 'MarkerSize', 10, 'Marker FaceColor','k')

axis equal

axis([PtA(1)-1.5*R, PtA(1)+1.5*R,PtA(2)-1.5*R, PtA(2)+1.5*R])

pause(0.05)

for jj = 1:N_cyc

delete(findobj('tag', 'tracer'))

for ii=1:length(theta)

delete(findobj('tag', 'update'))

plot([PtA(1) PtB(1,ii)], [PtA(2) PtB(2,ii)], 'b-', 'linewidth', 3, 'tag', 'update')

plot([(xB1(ii) xB2(ii) xB2(ii) xB1(ii) xB1(ii)],...

[yB2(ii) yB2(ii) yB1(ii) yB1(il) yB2(ii)], 'g-', 'linewidth',2,...

'tag','update')

plot(PtB(1,ii), PtB(2,ii), 'bo', 'MarkerSize', 10, 'Marker FaceColor','b', 'tag','update')

if rem(ii, Trace_inc) == 0% at every 10 degree it will be true

plot(PtB(1,ii), PtB(2,ii), 'b', 'tag', 'tracer')

end

pause(0.01)

end

end