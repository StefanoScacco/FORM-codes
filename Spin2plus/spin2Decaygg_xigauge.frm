S mX, xi;
* S defines scalar quantities

V k1, k2, e1, e2, pX;
* V defines vectors

T Sumpol, FeynXgg, Proj;
* T defines tensors

index mu, nu, gamma, delta, rho, sigma, alpha, beta;

* note 1: you can check Ward Identities by substituting k1 to e1 or k2 to e2
* note 2: csi = infty is Lorentz gauge. csi = 1 is Feynman gauge. Result is csi independent! 

L Decay = Sumpol(mu, nu, gamma, delta) * FeynXgg(mu, nu, rho, sigma, k1, k2) * FeynXgg(gamma, delta, alpha, beta, k1, k2) *
  	  e1(rho) * e2(sigma) * e1(alpha) * e2(beta);

* who are the tensors added?
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + pX(mu)*pX(nu)/(mX*mX);
id FeynXgg(mu?, nu?, rho?, sigma?, k1?, k2?) =
   	    d_(rho, sigma)*(k1(mu)*k2(nu) + k1(nu)*k2(mu))
          - d_(mu, rho)*k2(nu)*k1(sigma)
          - d_(mu, sigma)*k1(nu)*k2(rho)
          - d_(nu, sigma)*k1(mu)*k2(rho)
          - d_(nu, rho)*k2(mu)*k1(sigma)
          + k1.k2*(d_(mu, sigma)*d_(nu, rho) + d_(nu, sigma)*d_(mu, rho))

	  + 1/xi*(
	  - d_(mu, rho)*k2(nu)*k2(sigma)
          - d_(mu, sigma)*k1(nu)*k1(rho)
          - d_(nu, sigma)*k1(mu)*k1(rho)
          - d_(nu, rho)*k2(mu)*k2(sigma));


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