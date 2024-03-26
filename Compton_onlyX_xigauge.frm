S  me, mX, e, w, wpr, csi;
* S defines scalar quantities

V q, p, ppr, k, kpr, eps, epspr;
* V defines vectors

T Sumpol, FeynXgg, Proj;
* T defines tensors

index alpha, beta, gamma, delta, rho, sigma, mu, nu, zeta, tau, theta, lambda;
* define some indices

* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
* The Feynman rule tensor has been defined FeynXgg(mu, nu, rho, sigma, k, kpr)
* I want to study this amplitude better. I removed propagator denominator and constants in front.

* note 1: you can check Ward Identities by substituting k to eps or kpr to epspr, but CANCELLING p.eps = 0 and p.epspr = 0
* note 2: csi = infty is Lorentz gauge. csi = 1 is Feynman gauge. Result is csi independent!

L Comp = eps(alpha) * epspr(beta) * g_(1, rho) * (ppr(sigma) + p(sigma)) *
       	 Sumpol(mu, nu, rho, sigma) * FeynXgg(mu, nu, alpha, beta, k, kpr) *
	 (-i_*g_(1, p) + me*g_(1)) *
         eps(gamma) * epspr(lambda) * g_(1, delta) * (ppr(theta) + p(theta)) *
	 Sumpol(zeta, tau, delta, theta) * FeynXgg(zeta, tau, gamma, lambda, k, kpr) *
	 (-i_*g_(1, ppr) + me*g_(1));

* define the tensors needed
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + q(mu)*q(nu)/(mX*mX);

* convenient to put constraints to 0 here to make code faster
id ppr = p + k - kpr;
id q = k - kpr;

id p.eps = 0;
id p.epspr = 0;
id k.k = 0;
id kpr.kpr = 0;
id k.eps = 0;
id kpr.epspr = 0;

* this .sort is the key to light speed code!
.sort

* substitute Feynman rule
id FeynXgg(mu?, nu?, rho?, sigma?, k?, kpr?) =
          - d_(rho, sigma)*(k(mu)*kpr(nu) + k(nu)*kpr(mu))
          + d_(mu, rho)*kpr(nu)*k(sigma)
          + d_(mu, sigma)*k(nu)*kpr(rho)
          + d_(nu, sigma)*k(mu)*kpr(rho)
          + d_(nu, rho)*kpr(mu)*k(sigma)
          - k.kpr*(d_(mu, sigma)*d_(nu, rho) + d_(nu, sigma)*d_(mu, rho))

          + 1/csi*(
          - d_(mu, rho)*kpr(nu)*kpr(sigma)
          - d_(mu, sigma)*k(nu)*k(rho)
          - d_(nu, sigma)*k(mu)*k(rho)
          - d_(nu, rho)*kpr(mu)*kpr(sigma));

id ppr = p + k - kpr;
id q = k - kpr;

* select your favorite gauge
*id 1/csi = 0;

trace4, 1;
print;
.sort

id p.eps = 0;
id p.epspr = 0;
id p.p = -me^2;
id ppr.ppr = -me^2;
id k.k = 0;
id kpr.kpr = 0;
id k.eps = 0;
id kpr.epspr = 0;
id eps.eps = 1;
id epspr.epspr = 1;

* impose scalar products
id p.k = - me*w;
id p.kpr = - me*wpr;
id k.kpr = me*wpr - me*w;
*id wpr = w; *low energy limit
*id wpr = 0; *high energy limit

Bracket eps.epspr, k.epspr, kpr.eps, me, mX;

print;
.sort

.end
