%EXAMPLE OF CONSTRAINED OPTIMIZATION PROBLEM USING COMPLEMENTARITY METHODS
%BY MARIO GONZALEZ

%This example file is used to solve a simple optimization problem. 
% The problem consist in optimization a utility function subject to a
% budget constraint and non-negativity constraint.
%The problem is to maximize the utility function
%U=C^(1-sigma)/(1-sigma)-alpha*x^(1+gamma)/(1+gamma)
%subject to
%C=w*x+z
%0<=x<=1
%c=>0.
%where C is consumption, w is wage, x are working hours, z is an exogenous income
%fval is the first order condition of the optimization problem 
%fjac is the second derivative of the optimization problem. 

function [fval,fjac] = example(x)

w=0.5;
sigma=0.5;
z=1;
alpha=5;
gamma=2;


fval=w*(w*x+z)^(-sigma)-alpha*x^gamma;
fjac=-sigma*w^2*(w*x+z)^(-sigma-1)-alpha*gamma*x^(-1+gamma);