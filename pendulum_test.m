function dydt=pendulum(t,Y,m,L,b)
% Y(1) = p2 (mass angular momentum)
% Y(2) = theta (pendulum angle)

g=9.8;J=m*L^2;
% calculate new state vector
%Y1= m*g*L*sin(Y(2));
Y1= m*g*L*sin(Y(2))-b*Y(1)/(m*L^2);
Y2= -(1/J)*Y(1);
dydt=[Y1;Y2];
end

% COMMAND LINE
%
% m=1;L=1;b=0;
% OR with damping
% m=1;L=1;b=0.5;
% options=odeset('RelTol',1e-4,'AbsTol',1e-8);
% note the initial angle 20 deg must be converted to rad
% [t,y]=ode45(@pendulum,[0 20],[0;0.3491],options,m,L,b);
% 
% th=y(:,2);
% plot(t,th,'b')
%
% amplitude envelope
% amp=exp(-b*t/(2*L));
% plot(t,0.3491*amp,'k--')