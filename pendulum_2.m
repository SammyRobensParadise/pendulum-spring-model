function dydt=pendulum_2(t,Y,m_1,m_2,L,d)
    % Y(1)=p_1 
    % Y(2)=p_2 
    % Y(3)=q_k 
    % Y(4)=th_1 
    % Y(5)=th_2 
    % Y(6)=x_1
    % Y(7)=x_2
    % Y(8)=y_1
    % Y(9)=y_2
    % Y(10)=alpha 
    
    % Constants
    k=77.2; % Spring constant since 5 springs in total with same constant
            % k_tot= (n/k)^-1,n=5
    g=9.81; % Gravitational constant 
    b=2.5; % Damping
    
    % State variable equations 
    Y1=(-1*cos(Y(4))*cos(Y(10))*k*Y(3))-(sin(Y(4))*((m_1*g)+(sin(Y(10))*k*Y(3))))-(b*sin(Y(1))*m_1);
    Y2=(cos(Y(5))*cos(Y(10))*k*Y(3))-(sin(Y(5))*((m_2*g)-(sin(Y(10))*k*Y(3))))-(b*sin(Y(2))*m_2);
    Y3=(cos(Y(10))*((cos(Y(4))*Y(1)/m_1)-((cos(Y(5))*Y(2)/m_2))))+(sin(Y(10))*((sin(Y(4))*Y(1)/m_1)-((sin(Y(5))*Y(2)/m_2))));
    Y4=(Y(1)/(L*m_1));
    Y5=(Y(2)/(L*m_2));
    Y6=cos(Y(4))*(Y(1)/m_1);
    Y7=cos(Y(5))*(Y(2)/m_2);
    Y8=sin(Y(4))*(Y(1)/m_1);
    Y9=sin(Y(5))*(Y(2)/m_2);
    Y10=atan((Y(9)-Y(8))/(d+Y(7)-Y(6)));
    dydt=[Y1;Y2;Y3;Y4;Y5;Y6;Y7;Y8;Y9;Y10];
end
