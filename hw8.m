% output for q1
test = [5, 10, 20, 40, 80, 160];
tols = [];
iters = [];
for i=1:length(test)
    [iterate tols iters]= CGA_driver(test(i));
    tols = [tols tolerance];
    iters = [iters iter];
end


% isovalues problem
% method: simplify the given equation (should give an ellipse-like eqn)
% plot with meshgrid
%syms X Y

x = linspace(-5,5);
y = linspace(-5,5);
figure;
hold on;
[X, Y] = meshgrid(x,y)
iso = 0.5.*(2.*X.^2 - 2.*X.*Y + 2.*Y.^2) - (X + Y);
contour(X,Y,iso,'ShowText','on')
plot([1.5; 1]);
plot([1.5; 1.25]);
plot([1;1]);
