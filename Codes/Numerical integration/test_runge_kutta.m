clc 
clear all
close all
step = 0.01;% stepSize
timeSpan = [1,2];% timeSpan
intialCondions = [1,0];%  y (1) = 1 , y'(1) = 0 ,Intial conditions
[ t,y ] = RK4(@f,step,timeSpan,intialCondions);
Y = (7/4)*t + (t.^3/2).*log(t) - (3/4)*t.^3;  % <-- The analytic solution
figure
hold on
plot(t,Y,'b','LineWidth',5);  % Plot the analytic solution in thick blue
plot(t,y(1,:),'r','LineWidth',2);  % Plot the RK4 solution in thin red
grid on
legend('analytic','RK4');
xlabel('Time')
ylabel('y')
title('Solution to (t^2)*y'''' - 2*t*y'' + 2*y = (t^3)*log(t)');