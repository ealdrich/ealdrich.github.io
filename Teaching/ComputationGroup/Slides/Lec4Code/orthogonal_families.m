%Families of orthogonal polynomials.
% For Legendre and Leguerrre polynomials, simbolic differentiation is used.

close all;
clear all;
clc;


x=-1:0.01:1;
L = length(x);
i=1:9;         % Give us de degree of polynomials to be computed
LL = length(i);
f = zeros(LL,L);


%% Chebyshev Polinomials
%Evaluating Chebyshev polynomial
for j=1:LL;
    f(j,:) = cos(i(j)*acos(x));
end

 
figure;
for ii=1:LL;
    subplot(3,3,ii); %change it if want more than 9 
    plot(x,f(ii,:));
end


%% Legendre Polynomials

ff = zeros(LL,L);
zz = x;

% Evaluating Legendre polynomial using simbolic differentiation
for jj=1:LL
    syms z;
    funk = (1-z^2)^i(jj); %Component of the polynomial that needs to be differentiated
    dd = diff(funk,jj);   %Symbolic differentation for the above component
    ddd= subs(dd,zz);     %Evaluation of the symbolic differentation along the domain of the polynomial
    ff(jj,:) = (((-1)^jj)/((2^jj)*factorial(jj)))*ddd;  %Constructing the polynomial
end

figure;
for ii=1:LL;
    subplot(3,3,ii); %change it if want more than 9 
    plot(x,ff(ii,:));
end
   
%% Laguerre Polynomials

zz = 0:0.01:8;
L = length(zz);
ff = zeros(LL,L);

% Evaluating Laguerre polynomial using simbolic differentiation
for jj=1:LL
    syms z;
    funk = (z^i(jj))*exp(-z); %Component of the polynomial that needs to be differentiated
    dd = diff(funk,jj);   %Symbolic differentation for the above component
    ddd= subs(dd,zz);     %Evaluation of the symbolic differentation along the domain of the polynomial
    ff(jj,:) = (exp(zz)/factorial(jj)).*ddd;  %Constructing the polynomial
end

figure;
for ii=1:9;
    subplot(3,3,ii); %change it if want more than 9 
    plot(zz,ff(ii,:));
    hold on;
end

