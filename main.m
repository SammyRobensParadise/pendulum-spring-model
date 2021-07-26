clc; clear;

%% Parameters 
m=0.288; % Mass of each pendulum 
g=9.8; % Gravitational acceleration  
L=0.2032; % Pendulum arm length 
tspan = [0 5];
yo=[10*pi/180 0 10*pi/180 0]; % In phase 
options=odeset('RelTol',1e-4,'AbsTol',1e-8);

[t,y]=ode45(@(t,y) pendulum(t,y,m,L),tspan,yo,options); 

th1=y(:,4); 
th2=y(:,5);

figure
subplot(2,1,1)
plot(t,th1,'b')
xlabel("Time (s)")
ylabel('\theta_1')
subplot(2,1,2)
plot(t,th2,'r')
xlabel("Time (s)")
ylabel('\theta_2')
