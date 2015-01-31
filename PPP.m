% create a inhomogeneous Poisson Point Process
lambda = @(x) 300*(x(:,1).^2 + x(:,2).^2);
lamstar = 600;
N=poissrnd(lamstar); x = rand(N,2); % homogeneous PP
ind = find(rand(N,1) < lambda(x)/lamstar);
xa = x(ind,:); % thinned PP
plot(xa(:,1),xa(:,2))
