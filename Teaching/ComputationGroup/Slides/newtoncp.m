%NEWTON COMPLEMETARITY SOLVER
%BY MARIO GONZALEZ
%DEPARTMENT OF ECONOMICS UC, SANTA CRUZ
%
%This code is used to solve simple constrained optimization 
%problems. To solve a constrained optimization problem it is required that
%user rearrange the complementarity problem as a rootfinding problem. 
%In order for the code to work is necessary to define another m-file that
%contains the jacobian and hessian matrices of the objective function.
%The jacobian of the objective function is the main function in the
%rootfinding problem and the hessian of the objective function is the
%jacobian in this rootfinding problem. Further information can be found in
%chapters 3 and 4 of "Applied Computational Economics and Finance" by
%Miranda and Fackler.

function [x,fhatval,fhatjac]=newtoncp(f,x,a,b)

maxit     = 10;
tol       = 0.005;

 for it=1:maxit
       [fval,fjac] = feval(f,x);
       fhatval = min(max(fval,a-x),b-x);
       fhatjac = -eye(length(x));
       i = find(fval>a-x & fval<b-x);
       fhatjac(i,:) = fjac(i,:);
       x = x - fhatjac\fhatval;
       if norm(fhatval)<tol, break, end
end