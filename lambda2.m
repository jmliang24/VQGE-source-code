%The simulation of variational quantum generalized eigenvalue problem
%2019-10-17
%AUTHOR:Jin-Min Liang
clc
clear
%%
%Given a initial value of theta=theta0.
theta1=0;
for i=1:1:1000
    theta1=theta1+i*pi/1000;
    theta2=0;theta3=2.3396;theta4=1.8218;theta5=2.1577;
    theta=[theta1 theta2 theta3 theta4 theta5];
    if theta1<2*pi
    E2(i)=Expectation2(theta);
    R(i)=i;
    subplot(2,2,2);
    grid on;
    set(gca,'ytick',0:0.005:0.035);
    hold on;
    plot(R,E2,'LineWidth',2);
    end
end
%ÉèÖÃ×ø±êÖálabel
ylabel('Expectation value','FontSize',13);
xlabel('Optimization step','FontSize',13);
%%
theta0=[pi pi/2 pi/2 pi/2 pi/2]
%classical minimization algorithm.
x=fminsearch(@Expectation2,theta0)