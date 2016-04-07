test = [5, 10, 20, 40, 80, 160];
tols = [];
iters = [];
for i=1:length(test)
    [iterate tols iters]= CGA_driver(test(i));
    tols = [tols tolerance];
    iters = [iters iter];
end
tols
iters
