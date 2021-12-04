% Animation Source:
% https://www.youtube.com/watch?v=ULyHgWK4IJw

%% init

% Pendelkonstanten
l = 1;                  % m
m = 1;                  % kg
d = 0.0 ;               % Nm * s
g = 9.81;               % m/s^2

% Anfangswerte
theta_0 = 0.0;          % rad
omega_0 = 0.0;          % rad/s

% Regelparameter
theta_soll = pi;        % rad
kp = 15;                % 15
ki = 3;                 % 3
kd = 5;                 % 5

% Simulationsdaten
sim_time = 15;          % s 
solver_time = 0.1;      % s


%% animate

% Simulink - Modell ausführen und Outputs speichern
open("inverted_pendulum.slx")
data = sim("inverted_pendulum.slx", sim_time);

% Video vorbereiten
avi=VideoWriter('InvertedPendulum1DOF.avi');
avi.FrameRate = 60;
open(avi);

% Plot anpassen
lp = l * 1.2; 
%xlim([-lp lp]);
%ylim([-lp lp]);
axis off;
title('Torque Controlled Inverted Pendulum');

frames = length(data.theta);
for n=1:frames

    hold on;
    
    % Plot "übermalen"
    fill([-lp lp lp -lp],[-lp -lp lp lp],'w'); % clears background

    % Pendelstab, vom Ursprung zur Pendelmasse
    plot([0 l*sin(data.theta(n,:))],[0 -l*cos(data.theta(n,:))],'k','LineWidth',3); % plots rod

    % Pendelmasse
    plot(l*sin(data.theta(n,:)),-l*cos(data.theta(n,:)),'Marker','o','MarkerSize',20,'MarkerFaceColor','r','MarkerEdgeColor','r'); % plots bob 
    
    txt = ['time: ' num2str(n*solver_time-solver_time) ' s'];
    text(-1.1,1.1,txt);

    % aktuelles Figure übernehmen   
    frame=getframe(gcf);
    writeVideo(avi,frame);
end

close(avi)