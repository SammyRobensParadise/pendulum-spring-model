function dydt=pendulum(t,Y,m,L)
    % Y(1)=p1 (mass 1 angular momentum)
    % Y(2)=p2 (mass 2 angular momentum)
    % Y(3)=q 
    % Y(4)=theta 1 (pendulum 1 angle)
    % Y(5)=theta 2 (pendulum 2 angle)
    % Y(6)=x1
    % Y(7)=x2
    % Y(8)=y1
    % Y(9)=y2
    
    g=9.8;
    m=0.288; % Mass of each pendulum 
    L=0.2032; % Pendulum arm length 
    J=m*L^2; % Point mass
    k=0.01672; % Spring constant 
    % d=0.3; % Distance between two masses 
    a=0;
    
    % State variable equations
    Y1=(-cos(Y(4))*cos(a)*k*Y(3))-(sin(Y(4))*((m*g)+(sin(a)*k*Y(3)))); 
    Y2=(cos(Y(5))*cos(a)*k*Y(3))-(sin(Y(5))*((m*g)-(sin(a)*k*Y(3))));
    Y3=(cos(a)*((cos(Y(4))*Y(1)/m)-(cos(Y(5))*Y(2)/m)))+(sin(a)*((sin(Y(4))*Y(1)/m)-(sin(Y(5))*Y(2)/m)));
    Y4=-(1/J)*Y(1);
    Y5=-(1/J)*Y(2);
    Y6=cos(Y(4))*((1/J)*Y(1));
    Y7=cos(Y(5))*((1/J)*Y(2));
    Y8=sin(Y(4))*((1/J)*Y(1));
    Y9=cos(Y(5))*((1/J)*Y(2));
    % a=atan((Y9-Y8)/(d+Y7-Y6));
    dydt=[Y1;Y2;Y3;Y4;Y5;Y6;Y7;Y8;Y9];
end