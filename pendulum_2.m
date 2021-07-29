% p_1=x(1)
% p_2=x(2)
% q_k=x(3)
% th_1=x(4)
% th_2=x(5)
% x_1=x(6)
% x_2=x(7)
% y_1=x(8)
% y_2=x(9)
% alp=x(10)
k=17;
m_1=0.288;
m_2=0.288;
g=9.81;
L=0.2032;
d=0.2667;
% [p_1_dot,p_2_dot,q_k_dot,theta_1_dot,theta_2_dot,x_1_dot,x_2_dot,y_1_dot,y_2_dot,alp_dot]
vector=@(t,x) [((-1)*(cos(x(4))*cos(x(10))))-(sin(x(5))*((m_1*g)+(k*x(3)*sin(x(10)))));(((cos(x(5))*cos(x(10))*k*x(3))-(sin(x(5))*(m_2*g-(k*x(3)*sin(x(10)))))));((cos(x(10))*((x(1)/m_1)*cos((x(4)))-((x(2)/m_2)*cos(x(5)))))+(sin(x(10))*((x(1)/m_1)*sin((x(4)))-((x(2)/m_2)*sin(x(5))))));(x(1)/(L*m_1));((x(2)/(L*m_2)));(x(1)/m_1)*cos(x(4));(x(2)/m_2)*cos(x(5));(x(1)/m_1)*sin(x(4));(x(2)/m_2)*sin(x(5));atan((L-L+x(9)-x(8))/(d+x(7)-x(6)))];
[t,xa] = ode45(vector,[0 10],[1 0.5 1 1 1 1 1 1 1 1]);

plot(t,xa(:,6),'b',t,xa(:,7),'r',t,xa(:,8),'g',t,xa(:,9),'m');
xlabel('t'), ylabel('meters')