S me, mX, e, ge, gg, Lambda, w, wpr, csi;
* S defines scalar quantities

V q, p, ppr, k, kpr, eps, epspr;
* V defines vectors

T Sumpol, FeynXgg, Proj;
* T defines tensors

index alpha, beta, gamma, delta, rho, sigma, mu, nu, zeta, tau, theta, lambda;
* define some indices

* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
* The Feynman rule tensor has been defined FeynXgg(mu, nu, rho, sigma, k, kpr)

* note 1: you can check Ward Identities by substituting k to eps or kpr to epspr
* note 2: csi = infty is Lorentz gauge. csi = 1 is Feynman gauge. Result is csi independent!

L Comp = (-e^2*((g_(1, epspr)*(-i_*(g_(1, p) + g_(1, eps)) + me*g_(1))*g_(1, k))/(2*p.k) +
         (g_(1, eps)*(-i_*(g_(1, p) - g_(1, kpr)) + me*g_(1))*g_(1, epspr))/(-2*p.kpr)) +

	 ge*gg/(2*Lambda^2) * eps(alpha) * epspr(beta) * g_(1, rho) * (ppr(sigma) + p(sigma)) *
	 Sumpol(mu, nu, rho, sigma)/(-2*k.kpr + mX*mX) * FeynXgg(mu, nu, alpha, beta, k, kpr)) *
	 (-i_*g_(1, p) + me*g_(1)) *

	 (-e^2*((g_(1, eps)*(-i_*(g_(1, p) + g_(1, k)) + me*g_(1))*g_(1, epspr))/(2*p.k) +
         (g_(1, epspr)*(-i_*(g_(1, p) - g_(1, kpr)) + me*g_(1))*g_(1, eps))/(-2*p.kpr)) -

         ge*gg/(2*Lambda^2) * eps(gamma) * epspr(lambda) * g_(1, delta) * (ppr(theta) + p(theta)) *
	 Sumpol(zeta, tau, delta, theta)/(-2*k.kpr + mX*mX) * FeynXgg(zeta, tau, gamma, lambda, k, kpr)) *
         (-i_*g_(1, ppr) + me*g_(1));

*define the tensors needed
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + q(mu)*q(nu)/(mX*mX);
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

Bracket eps.epspr, k.epspr, kpr.eps, me, mX, gg, ge, Lambda, e;

print;
.sort

.end