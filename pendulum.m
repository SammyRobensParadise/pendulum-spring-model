function dydt=pendulum(t,Y,m,L)
    % Y(1)=p1 (mass 1 angular momentum)
    % Y(2)=p2 (mass 2 angular momentum)
    % Y(3)=q 
    % Y(4)=theta 1 (pendulum 1 angle)
    % Y(5)=theta 2 (pendulum 2 angle)
    
    J=m*L^2; % Point mass
    g=9.8; % Gravitational acceleration
    k=0.01672; % Spring constant 
    
    % State variable equations (L1=L2 -> a=0)
    Y1=(-cos(Y(4))*k*Y(3))-(sin(Y(4))*m*g); 
    Y2=(cos(Y(5))*k*Y(3))-(sin(Y(5))*m*g);
    Y3=(cos(Y(4))*Y(1)/J)-(cos(Y(5))*Y(2)/J);
    Y4=(1/J)*Y(1);
    Y5=(1/J)*Y(2);
    dydt=[Y1;Y2;Y3;Y4;Y5];
end
