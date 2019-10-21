%The generalized eigenvalue problem using classical algorithm.
%2019-10-17
%AUTHOR:Jin-Min Liang
clc
clear
%%
%Define Pauli Operator
sigma1=[0,1;1,0];sigma2=[0,1;-sqrt(-1),0];sigma3=[1,0;0,-1];
%Define qubit |0> and |1>
qubit0=[1;0];qubit1=[0;1];
%Define the project operator
P0=qubit0*qubit0';
P1=qubit1*qubit1';
%Define Pauli Operator
Pauli1=[0,1;1,0];Pauli2=[0,sqrt(-1);-sqrt(-1),0];Pauli3=[1,0;0,-1];
%%
%Given a matrix A
A=eye(2^5)+0.2*kron(kron(Pauli1,Pauli3),eye(2^3))+0.2*kron(Pauli1,eye(2^4));
eig(A);%A特征值
%Given a matrix B. compute A*psi=lambda*B*psi. A*B-B*A=0
s1=0.0741;s2=0.3939;
B=eye(2^5)+s1*kron(kron(Pauli1,Pauli3),eye(2^3))+s2*kron(Pauli1,eye(2^4));
eig(B);%B特征值
%%
standard=eig(inv(B)*A)%The generalized eigenvalues of A*psi=lambda*B*psi.