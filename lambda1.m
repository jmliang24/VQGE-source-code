%The simulation of variational quantum generalized eigenvalue problem
%2019-10-17
%AUTHOR:Jin-Min Liang
clc
clear
%%
%Given a initial value of theta=theta0.
theta1=0;
for i=1:1:1000
    theta1=theta1+i*pi/500;
    theta2=3.1415;theta3=1.2478;theta4=1.5790;theta5=1.4377;
    theta=[theta1 theta2 theta3 theta4 theta5];
    if theta1<2*pi
    E1(i)=Expectation1(theta);
    R(i)=i;
    grid on;
    set(gca,'ytick',0:0.1:1.5);
    hold on;
    subplot(2,2,1);
    plot(R,E1,'LineWidth',2);
    end
end
%ÉèÖÃ×ø±êÖálabel
ylabel('Expectation value','FontSize',13);
xlabel('Optimization step','FontSize',13);
%%
theta0=[pi pi/2 pi/2 pi/2 pi/2]
%classical minimization algorithm.
x=fminsearch(@Expectation1,theta0)