% https://www.youtube.com/watch?v=ULyHgWK4IJw
% %https://de.mathworks.com/matlabcentral/answers/94495-how-can-i-create-animated-gif-images-in-matlab

m=1; % pendulum bob mass
l=2; % pendulum rod length
g=9.81; % acceleration due to gravity
t=10; % simulation time
c=0.25; % damping coefficient
tStep=0.01; % simulation time step
iterations=t/tStep; % total number of iterations
% pre-allocation of variables for speed
theta=zeros(iterations,1);
omega=zeros(iterations,1);
alpha=zeros(iterations,1);
T=zeros(iterations,1);
theta(1,:)=pi/2; % initial angular position
omega(1,:)=0; % initial angular velocity
alpha(1,:)=0; % initial angular acceleration

figure(1)
filename = 'pendulum_test.gif';

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

    drawnow
    frame = getframe(1);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    if n == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append');
    end
end
