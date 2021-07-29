clc; clear;

% Parameters 
m_1=0.288;    
m_2=0.288;
L=0.2032; % Pendulum arm length 
d=0.2667; % Initial distance between pendulum

% Initial condition: th_1 = 20 degrees (0.349 radians), th_2 = 0 degrees
[t,y]=ode45(@(t,y) pendulum_2(t,y,m_1,m_2,L,d),[0 10],[0;0;0;0.349;0;0;0;0;0;0]);

% th1=y(:,4); 
% th2=y(:,5);

% figure
% subplot(2,1,1)
% plot(t,th1,'b')
% xlabel("Time (s)")
% ylabel('\theta_1')
% subplot(2,1,2)
% plot(t,th2,'r')
% xlabel("Time (s)")
% ylabel('\theta_2')

plot(t,y(:,4)*180/pi,'b',t,y(:,5)*180/pi,'r');
xlabel('Time (s)'), ylabel('\theta (degrees)')
legend('\theta_1','\theta_2')
