clc; clear;

%% Parameters 
m=0.288; % Mass of each pendulum   
L=0.2032; % Pendulum arm length 

% Initial conditions: Theta 1, Theta 2 set to 20 degrees = 0.349066 radian
[t,y]=ode45(@(t,y) pendulum(t,y,m,L),[0 5],[0;0;0;0.349066;0.349066]);

th1=y(:,4); 
th2=y(:,4);

figure
subplot(2,1,1)
plot(t,th1,'b')
xlabel("Time (s)")
ylabel('\theta_1')
subplot(2,1,2)
plot(t,th2,'r')
xlabel("Time (s)")
ylabel('\theta_2')

figure
plot(t,th1,'r',t,th2,'b--o')