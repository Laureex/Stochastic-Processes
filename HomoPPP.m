% create a homogeneous Poisson Point Process
% lambda = @(x) 300*(x(:,1).^2 + x(:,2).^2);
lambda = 300;
lamstar = 600;
N=poissrnd(lamstar); x = rand(N,2); % homogeneous PP
ind = find(rand(N,1) < lambda/lamstar);
xa = x(ind,:); % thinned PP
plot(xa(:,1),xa(:,2), '.');
