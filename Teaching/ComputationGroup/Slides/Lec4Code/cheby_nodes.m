
%% zeros of cos(n*teta) where teta=0:pi and n=1,2,3,....
tetax=0:0.001:pi;
n=1:1:9;
t_cheby = zeros(length(n),length(tetax));

for j=1:length(n);
    t_cheby(j,:) = cos(n(j)*tetax);
end

% Roots of the cos(n*teta) function
x=zeros(length(n),length(n));

for k=1:length(n);
    for kk=1:k;
        x(kk:k,k) = (kk-0.5)*(pi/k);
    end
end

figure;
for ii=1:length(n);
    subplot(3,3,ii);
    plot(tetax,t_cheby(ii,:));
    hold on;
    plot( x(1:ii,ii), zeros( size(x(1:ii,ii)) ), 'sr' );
    axis( [min(tetax)-0.2, max(tetax)+0.2, ceil(min(t_cheby(ii,:)))-1.5, floor(max(t_cheby(ii,:)))+1.5] );
    grid on;
end

%% Chebyshev nodes

x_k = x;

for k=1:length(n);
    for kk=1:k;
        x_k(kk:k,k) = cos(x(kk:k,k));
    end
end

z=-1:0.01:1;   %Domain of the Chebyshev polynomial
L = length(z); 
i=1:9;         % Give us de degree of the polynomials to be computed
LL = length(i);
T = zeros(LL,L);


%% Chebyshev Polinomials and their nodes
%Evaluating Chebyshev polynomial
for j=1:LL;
    T(j,:) = cos(i(j)*acos(z));
end

 
figure;
for ii=1:LL;
    subplot(3,3,ii); %change it if want more than 9 
    plot(z,T(ii,:));
    hold on;
    plot( x_k(1:ii,ii), zeros( size(x_k(1:ii,ii)) ), 'sr' );
    grid on;
end


