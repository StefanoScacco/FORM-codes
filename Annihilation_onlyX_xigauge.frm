S me, mX, E, p, costheta, xi;
* S defines scalar quantities. I added quantities for 2 systems of reference.

V q, p1, p2, k1, k2, eps1, eps2;
* V defines vectors

T Sumpol, FeynXgg, Proj;
* T defines tensors

index alpha, beta, gamma, delta, rho, sigma, mu, nu, zeta, tau, theta, lambda;
* define some indices

* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
* The Feynman rule tensor has been defined FeynXgg(mu, nu, rho, sigma, k1, k2)
* I want to study this amplitude better. I removed propagator denominator and constants in front.

* note 1: you can check Ward Identities by substituting k1 to eps1 or k2 to eps2, but CANCELLING p1.eps1 = 0, p1.eps2 = 0, k1.eps2 = 0, k2.eps1 = 0
* note 2: xi = infty is Lorentz gauge. xi = 1 is Feynman gauge. Result is xi independent!

L Posit = eps1(alpha) * eps2(beta) * g_(1, rho) * (p2(sigma) - p1(sigma)) *
  	  Sumpol(mu, nu, rho, sigma) * FeynXgg(mu, nu, alpha, beta, k1, k2) *
	  (-i_*g_(1, p1) + me*g_(1)) *
	  eps1(gamma) * eps2(lambda) * g_(1, delta) * (p2(theta) - p1(theta)) *
	  Sumpol(zeta, tau, delta, theta) * FeynXgg(zeta, tau, gamma, lambda, k1, k2) *
	  (-i_*g_(1, p2) - me*g_(1));

* define the tensors needed
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + q(mu)*q(nu)/(mX*mX);

* convenient to put constraints to 0 here to make code faster
id p2 = k1 + k2 - p1;
id q = k1 + k2;

id p1.eps1 = 0;
id p1.eps2 = 0;
id k1.k1 = 0;
id k2.k2 = 0;
id k1.eps1 = 0;
id k2.eps2 = 0;
id k1.eps2 = 0;
id k2.eps1 = 0;

* this .sort is the key to light speed code!
.sort

* substitute Feynman rule
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

id p2 = k1 + k2 - p1;
id q = k1 + k2;

* select your favorite gauge
*id 1/xi = 0;

trace4, 1;
print;
.sort

* electron still initially at rest, eps(0) = 0 gauge:
id p1.eps1 = 0;
id p1.eps2 = 0;
id p1.p1 = -me^2;
id p2.p2 = -me^2;
id k1.k1 = 0;
id k2.k2 = 0;
id k1.eps1 = 0;
id k2.eps2 = 0;
id k1.eps2 = 0;
id k2.eps1 = 0;
id eps1.eps1 = 1;
id eps2.eps2 = 1;

* impose scalar products
id k1.k2 = p1.k1 + p1.k2;
id p1.k1 = -E*E-p*E*costheta;
id p1.k2 = -E*E+p*E*costheta;
id k1.k2 = -2*E*E;

Bracket mX, eps1.eps2;

print;
.sort

.end
