S mX;
* S defines scalar quantities

V k1, k2, e1, e2, pX;
* V defines vectors

T Sumpol, Proj;
* T defines tensors

index mu, nu, gamma, delta, rho, sigma, alpha, beta, tau1, theta1, tau2, theta2;

* note 1: you can check Ward Identities by substituting k1 to e1 or k2 to e2

L Decay = Sumpol(mu, nu, gamma, delta) *
  	  2*e_(tau1, rho, theta1, sigma) * ( k1(mu)*k2(nu)*k1(tau1)*k2(theta1) - k2(mu)*k1(nu)*k2(tau1)*k1(theta1) ) *
	  2*e_(tau2, alpha, theta2, beta) * ( k1(gamma)*k2(delta)*k1(tau2)*k2(theta2) - k2(gamma)*k1(delta)*k2(tau2)*k1(theta2) ) *
  	  e1(rho) * e2(sigma) * e1(alpha) * e2(beta);

* who are the tensors added?
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + pX(mu)*pX(nu)/(mX*mX);


* add constraints
id pX = k1 + k2;


print;
.sort

* more constraints
id k1.e1 = 0;
id k2.e2 = 0;
id e1.e1 = 1;
id e2.e2 = 1;
id k1.k1 = 0;
id k2.k2 = 0;
id pX.pX = -mX^2;
id k1.k2 = -mX^2/2;

print;
.sort

.end
