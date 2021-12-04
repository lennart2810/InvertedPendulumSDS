% Caleb Williams (5/2/19)
% 
% Animates the motion of a simple pendulum as a function of time.
clear all; close all; clc;

% All units in the SI system
m=1; % pendulum bob mass
l=2; % pendulum rod length
g=9.81; % acceleration due to gravity
t=10; % simulation time
c=0.25; % damping coefficient
tStep=0.1; % simulation time step
iterations=t/tStep; % total number of iterations
% pre-allocation of variables for speed
theta=zeros(iterations,1);
omega=zeros(iterations,1);
alpha=zeros(iterations,1);
T=zeros(iterations,1);
theta(1,:)=pi/2; % initial angular position
omega(1,:)=0; % initial angular velocity
alpha(1,:)=0; % initial angular acceleration

% Set up video
v=VideoWriter('pendulum.avi');
v.FrameRate=60;
open(v);

for n=1:iterations
    % Iteratively solve equations of motion using Euler's Method
    theta(n+1,:)=theta(n,:)+omega(n,:)*tStep; % new angular position
    omega(n+1,:)=omega(n,:)+alpha(n,:)*tStep; % new angular velocity
    alpha(n+1,:)=(-g*sin(theta(n+1,:)))/l-c*omega(n+1,:); % new angular acceleration
    
    % Plot everything for the video
    hold on;
    fill([-l-0.2*l l+0.2*l l+0.2*l -l-0.2*l],[-l-0.2*l -l-0.2*l l+0.2*l l+0.2*l],'w'); % clears background
    plot([0 l*sin(theta(n,:))],[0 -l*cos(theta(n,:))],'b','LineWidth',3); % plots rod
    plot(l*sin(theta(n,:)),-l*cos(theta(n,:)),'Marker','o','MarkerSize',20,'MarkerFaceColor','r','MarkerEdgeColor','r'); % plots bob
    %plot(0,0,'Marker','0','MarkerSize',5,'MarkerFaceColor','k','MarkerEdgeColor','k'); % plots pin
    xlim([-l-0.2*l l+0.2*l]);
    ylim([-l-0.2*l l+0.2*l]);
    title('Simple Pendulum by Caleb Williams');


    frame=getframe(gcf);
    writeVideo(v,frame);
end

close(v);

