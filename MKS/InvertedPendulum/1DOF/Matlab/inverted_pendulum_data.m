% Animation: https://www.youtube.com/watch?v=ULyHgWK4IJw

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
sim_time = 10;          % s 
solver_time = 0.05;      % s


%% animate

% Simulink - Modell ausführen und Outputs speichern
open("inverted_pendulum.slx")
data = sim("inverted_pendulum.slx", sim_time);
frames = length(data.theta);

% Video vorbereiten
avi=VideoWriter('InvertedPendulum1DOF.avi');
avi.FrameRate = 20;
open(avi);

% Plot anpassen
title('Torque Controlled Inverted Pendulum','FontSize',14);
set(gcf,'color','white')
lp = l * 1.8;
axis off;

for n=1:frames

    hold on;
    
    % Plot "übermalen"
    fill([-lp lp lp -lp],[-lp -lp lp lp],'w');

    % Pendelstab, vom Ursprung zur Pendelmasse
    plot([0 l*sin(data.theta(n))],[0 -l*cos(data.theta(n))],'k','LineWidth',3);

    % Pendelmasse
    plot(l*sin(data.theta(n)),-l*cos(data.theta(n)),'Marker','o','MarkerSize',20,'MarkerFaceColor','r','MarkerEdgeColor','r'); % plots bob 
    
    % Zeitlabel
    txt = ['time: ' num2str(round(n*solver_time-solver_time),2) ' s'];
    text(-1.6,1.5,txt,'FontSize',14);

    % aktuelles Figure übernehmen   
    frame=getframe(gcf);
    writeVideo(avi,frame);
end

close(avi)