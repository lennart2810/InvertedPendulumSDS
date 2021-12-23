
%% Simulation
m = 1;
M = 5;
L = 2;
g = -10;
d = 1;
F = 0;

solver = 0.5;
t = 100;

x_0 = .0;
v_0 = .0;
t_0 = pi;
o_0 = .5;

%open('inverted_pendulum_2dof.slx')
data = sim('inverted_pendulum_2dof.slx', t);

%% Animation
x = data.x;
th = data.theta;

W = 1*sqrt(M/5);  % cart width
H = .5*sqrt(M/5); % cart height
wr = .2;          % wheel radius
mr = .3*sqrt(m);  % mass radius

plot(data.theta);
hold on;
plot(data.omega);
hold on;
plot(data.x);
hold on;
plot(data.velocity);


% for k=1:length(data.theta)
%     
%     y = wr/2+H/2; % cart vertical position
%     pendx = x(k) + L*sin(th(k));
%     pendy = y - L*cos(th(k));
%     
%     plot([-10 10],[0 0],'k','LineWidth',2), hold on
%     rectangle('Position',[x(k)-W/2,y-H/2,W,H],'Curvature',.1,'FaceColor',[.5 0.5 1],'LineWidth',1.5); % Draw cart
%     rectangle('Position',[x(k)-.9*W/2,0,wr,wr],'Curvature',1,'FaceColor',[0 0 0],'LineWidth',1.5); % Draw wheel
%     rectangle('Position',[x(k)+.9*W/2-wr,0,wr,wr],'Curvature',1,'FaceColor',[0 0 0],'LineWidth',1.5); % Draw wheel
%     plot([x(k) pendx],[y pendy],'k','LineWidth',2); % Draw pendulum
%     rectangle('Position',[pendx-mr/2,pendy-mr/2,mr,mr],'Curvature',1,'FaceColor',[1 0.1 .1],'LineWidth',1.5);
%     
%     axis([-5 5 -2 2.5]); axis equal
%     set(gcf,'Position',[100 100 1000 400])
%     drawnow, hold off
%     pause(0.05)
% end