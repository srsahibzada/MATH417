function [iterate, normed_residual, iters] = CGA_driver(dim)
low_diag = ones(dim,1) .* -1;
mid_diag = ones(dim,1) .* 2;
up_diag = ones(dim,1) .* -1;
soln = ones(dim,1);
x0 = zeros(dim,1);
sys = [low_diag mid_diag up_diag];
where = [-1 0 1]; % arg necessary for call to spdiags
A = spdiags(sys, where, dim,dim);
[iterate, normed_residual, iters] = CGA(A,soln,x0);
full(A)
end