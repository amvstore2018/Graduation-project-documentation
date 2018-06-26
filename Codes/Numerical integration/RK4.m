function [ t,y ] = RK4(func,stepSize,timeSpan,intialValues)
h = stepSize;% step size
t = timeSpan(1):h:timeSpan(2);% time span
y = zeros(length(intialValues),length(t));
for i=1:length(intialValues)
    y(i,1)= intialValues(i); % The initial value of y  at time t(1)
end
for i=1:(length(t)-1)  % Runge Kutta forth order
    k1 = h * func( t(i)       , y(:,i)         );
    k2 = h * func( t(i)+0.5*h , y(:,i)+0.5*k1  );
    k3 = h * func( t(i)+0.5*h , y(:,i)+0.5*k2  );
    k4 = h * func( t(i)+    h , y(:,i)+    k3  );
    y(:,i+1) = y(:,i) + (1/6)*(k1 + 2*k2 + 2*k3 + k4);
end
end
