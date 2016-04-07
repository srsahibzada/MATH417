%{
    Sarah Sahibzada
    MATH 417-502
    HW 8: Conjugate Gradient Algorithm implementation
%}

function [iterate, normed_residual, iters] = CGA(A,b,x0)
max_loops = 10000000;
normed_residual = 10000000;
iters = 1; % by default we count this first one
tolerance = 10^-8;
residual = b - A * x0;
w1 = -1*residual;
z1 = A * w1;
alpha = ((residual)'*w1)/(w1' * z1);
x1 = x0 + alpha * w1;
while iters < max_loops && normed_residual >= tolerance
    residual = residual - (alpha * z1);
    if (norm(residual)/length(x0)) < tolerance
        break;
    else
        beta = ((residual')*z1)/(w1'*z1)
        w1 = -residual + beta*w1
        z1 = A * w1
        alpha = (residual' * w1)/(w1'*z1)
        x1 = x1 + alpha*w1
    end
    
    normed_residual = norm(residual)/length(x0);
    iters = iters + 1;
        
end
normed_residual = norm(residual)/length(x0);
iterate = x1
iters

end