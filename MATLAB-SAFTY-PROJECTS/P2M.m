clear; clc; close all;

% Parameters
PtA = [1, 2]; % Coordinates of point A
R = 3; % Length of the crank
N_cyc = 2; % Number of cycles
Trace_inc = 20; % Tracing increment

% Define theta (angles in radians)
theta = (1:360) * pi / 180;

% Coordinates of point B
PtB = [PtA(1) + R * cos(theta); PtA(2) + R * sin(theta)];

% Dimensions of the box at point B
BoxSide = R / 4;
xB1 = PtB(1, :) - BoxSide / 2;
xB2 = PtB(1, :) + BoxSide / 2;
yB1 = PtB(2, :) - BoxSide / 2;
yB2 = PtB(2, :) + BoxSide / 2;

% Plot settings
figure(1);
hold on;
plot(PtA(1), PtA(2), 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'k');
axis equal;
axis([PtA(1) - 1.5 * R, PtA(1) + 1.5 * R, PtA(2) - 1.5 * R, PtA(2) + 1.5 * R]);
pause(0.05);

% Animation loop
for jj = 1:N_cyc
    delete(findobj('tag', 'tracer'));
    for ii = 1:length(theta)
        delete(findobj('tag', 'update'));

        % Draw crank
        plot([PtA(1), PtB(1, ii)], [PtA(2), PtB(2, ii)], 'b-', 'LineWidth', 3, 'tag', 'update');

        % Draw box at point B
        plot([xB1(ii), xB2(ii), xB2(ii), xB1(ii), xB1(ii)], ...
             [yB2(ii), yB2(ii), yB1(ii), yB1(ii), yB2(ii)], 'g-', 'LineWidth', 2, 'tag', 'update');

        % Draw point B
        plot(PtB(1, ii), PtB(2, ii), 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b', 'tag', 'update');

        % Add tracer
        if rem(ii, Trace_inc) == 0
            plot(PtB(1, ii), PtB(2, ii), 'b.', 'tag', 'tracer');
        end

        pause(0.01);
    end
end