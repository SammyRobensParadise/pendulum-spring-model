clc; clear;

% Parameters 
m_1=0.288;    
m_2=0.288;
L_1=0.2032; 
L_2=0.1832;
d=0.2667; % Initial distance between two pendulums

% Initial conditions: 
% th_1 = 30deg (0.524rad)
% th_2 = 20deg (0.349rad) 
% x1 = 5cm (0.05m)
% x2 = 3cm (0.03m)
% y1 = 2cm (0.02m)
% y2 = 5mm (0.005m)
% alpha = 5deg (0.0873rad)
[t,y]=ode45(@(t,y) pendulum_2(t,y,m_1,m_2,L_1,L_2,d),[0 15],[0;0;0;0.524;0.349;0.05;0.03;0.02;0.005;0.0873]);

% Graph in separate figures: 
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

% Graph in single figure:
plot(t,y(:,4)*180/pi,'b',t,y(:,5)*180/pi,'r');
xlabel('Time (s)'), ylabel('\theta (degrees)')
legend('\theta_1','\theta_2')
