

a = -5;                                   
b =  5;                                    % Domain of the function
min_n =11;                                  % minimun number of polynomials to be estimated  
max_n = 11;                                 % max number of polynomials to be estimated  
xx = linspace( a, b, 100 );                % data to evaluate the functions don't confuse with the interpolation data
Lagrange_approx = zeros(max_n,length(xx)); %Big matrix to put eac interpolating polynomial
error = zeros(max_n,length(xx));           % Big matrix to put the errors

for n=min_n:max_n;

x = zeros(1,n); 
for jj=1:n;
    x(1,jj)=a+((jj-1)/(n-1))*(b-a);
end

%figure(1); clf; hold on;


Lagrange = ones(n,length(xx));

for j = 1:n
L = ones( size(xx) );
for k = 1:n
if (k == j), continue;
end
L = L .* (xx - x(k))./(x(j) - x(k));
end
Lagrange(j,:) = L;
%plot( xx, L, '-k', 'LineWidth', 1.5 );
%text( x(j), 1.1, sprintf( 'L_%d(x)', j ) );
end

%plot( x, ones( size(x) ), '.b', 'MarkerSize', 18 );
%plot( x, zeros( size(x) ), 'sr' );
%axis( [min(x)-0.2, max(x)+0.2, ceil(min(L))-1.0, floor(max(L))+0.5] );
%title('Lagrange Basis Functions');


% Chossing the function f 
ff = 1./(1+x.^2);
ffval = 1./(1+xx.^2);

%ff = exp(-4.*x.^2);
%ffval = exp(-4.*xx.^2);

%ff = exp(-x);
%ffval = exp(-xx);

Lagrange_approx(n,:)= ff*Lagrange;
error(n,:) = -ffval+Lagrange_approx(n,:);

end

figure;
plot(xx,ffval,'--k');
hold on;
plot(xx,Lagrange_approx);
%axis( [min(x)-0.2, max(x)+0.2, ceil(min(L))-1.5, floor(max(L))+1.5] );
%plot( x, ones( size(x) ), '.b', 'MarkerSize', 18 );
%plot( x, zeros( size(x) ), 'sr' );
grid on;

%saving the error
figure;
plot(xx,error);

hh= max_n-min_n;
maxerror= zeros(hh,1);
for k=min_n:max_n
maxerror(k,1) = max(abs(error(k,:)));
end



