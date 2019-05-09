close all;
clear all;
clc;
%% General method

% Original function 
x=-1:0.001:1;     %%NOTE: Only for functions on -1 to 1. The least squares coeff. are implemented for that domain also. 

%Choose the function to interpolate. ALso change it in line40 to line44

%actual = exp(x);
%actual = exp(x+1);
actual = (x+1).^0.25;
%actual = max(0,x.^3);

% Maximun degree of approximation
d=10; 

% Storing approximation error for each of the d polynomial approximation 
error =zeros(d,length(x));
L_inf = zeros(d,1);

% Storing coefficients for each approximation 
CC = zeros(d,d);

for n=1:d % There is going to be "d" different approximations
    
    H = zeros(n,n); %orthogonality condition 
    H(1,1) = pi;
    for ii=2:n+1
        H(ii,ii) = pi/2;
    end

%Least squares coefficients of Chebyshev polynomial approximation: Hc=q

    k=0:n;
    q=zeros(length(k),1);

    for jj=1:length(k);
        %fun = @(x) ((cos(k(jj).*acos(x))).*exp(x))./(sqrt(1-x.^2));          %This is only for approximating f=exp(x) 
        %fun = @(x) ((cos(k(jj).*acos(x))).*exp(x+1))./(sqrt(1-x.^2));        %This is only for approximating f=exp(x+1)
        fun = @(x) ((cos(k(jj).*acos(x))).*((x+1).^0.25))./(sqrt(1-x.^2));   %This is only for approximating f=(x+1)^0.25
        %fun = @(x) ((cos(k(jj).*acos(x))).*(max(0,x.^3)))./(sqrt(1-x.^2));   %This is only for approximating f=max(0,x.^3)
        q(jj,1) = quad(fun,-1,1);
    end

% Obtainning the coefficients of the approximation and stroing them in CC
    c = inv(H)*q;
    CC(1:length(k),n)  = c;

% NOTICE: for d=1 there are two coefficients c0 and c1. 
%% Evaluating the chebyshev approximation using recursive representation

    y = zeros(length(x),n+1);
    y(:,1) = 1;
    y(:,2) = x;
    for kk=2:n
        y(:,kk+1) = 2*x'.*y(:,kk) - y(:,kk-1); %Recursive representation 
    end
    approxch = y*c;
    figure(n);
    plot(x,actual);
    hold on;
    plot(x,approxch,'--r');
    legend('original function','Chebyshev approximation')

%% Approximation errors

error(n,:) = actual-approxch';
L_inf(n,1) = max(abs(actual-approxch'));  %Using the supreme norm

end

figure;
plot(x,error);

figure;
for ii=1:9;
    subplot(3,3,ii); %change it if want more than 9 
    plot(x,error(ii,:));
    hold on;
    grid on;
end
