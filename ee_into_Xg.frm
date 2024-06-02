S mX, e, ge, gg, Lambda, s, t, u, xi1, xi2;
* S defines scalar quantities

V q1, q2, p1, p2, pgg1, pgg2, eps;
* V defines vectors

T Sumpol, FeynXgg, Proj, Phot, epsX;
* T defines tensors

index mu, nu, zeta, tau, rho, sigma, alpha, beta, gamma, theta;
* define some indices

* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
* The Feynman rule tensor has been defined FeynXgg(mu, nu, rho, sigma, pgg1, pgg2)

* note 1: you can check Ward Identities by substituting p2 to eps, but CANCELLING p2.eps = 0
* note 2: xi = infty is Lorentz gauge. xi = 1 is Feynman gauge. Result is xi independent!

L eeXg = 6*mX^4*s*t*u*e^2/(4*Lambda^2) * Sumpol(mu, nu, zeta, tau) * d_(rho, beta) *

       ( - i_* ge * g_(1, mu) * d_(rho, nu)
         - i_* gg * FeynXgg(mu, nu, rho, sigma, pgg1, pgg2) * Phot(sigma, alpha, pgg2) * g_(1, alpha)
         + ge/2 * g_(1, rho) * (-i_ * ( g_(1, q1) - g_(1, p1) )/(t) ) * g_(1, mu) * (q2(nu) - p2(nu) - q1(nu))
         + ge/2 * g_(1, mu) * (q2(nu) - q1(nu) + p2(nu)) * (-i_ * ( g_(1, q1) - g_(1, p2) )/(u) ) * g_(1, rho)  ) *

       (-i_ * g_(1, q1) ) *

       ( - i_* ge * g_(1, zeta) * d_(tau, beta)
         - i_* gg * FeynXgg(zeta, tau, beta, gamma, pgg1, pgg2) * Phot(gamma, theta, pgg2) * g_(1, theta)
         + ge/2 * g_(1, zeta) * (-i_ * ( g_(1, q1) - g_(1, p1) )/(t) ) * g_(1, beta) * (q2(tau) - p2(tau) - q1(tau))
         + ge/2 * g_(1, beta) * (q2(tau) - q1(tau) + p2(tau)) * (-i_ * ( g_(1, q1) - g_(1, p2) )/(u) ) * g_(1, zeta)  ) *

       (-i_ * g_(1, q2) );

* define the tensors needed
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + p1(mu)*p1(nu)/(mX*mX);

* substitute Feynman rule in xi gauge
id FeynXgg(mu?, nu?, rho?, sigma?, pgg1?, pgg2?) =
          + d_(rho, sigma)*(pgg1(mu)*pgg2(nu) + pgg1(nu)*pgg2(mu))
          - d_(mu, rho)*pgg2(nu)*pgg1(sigma)
          - d_(mu, sigma)*pgg1(nu)*pgg2(rho)
          - d_(nu, sigma)*pgg1(mu)*pgg2(rho)
          - d_(nu, rho)*pgg2(mu)*pgg1(sigma)
          + pgg1.pgg2*(d_(mu, sigma)*d_(nu, rho) + d_(nu, sigma)*d_(mu, rho))

          + 1/xi1*(
          - d_(mu, rho)*pgg2(nu)*pgg2(sigma)
          - d_(mu, sigma)*pgg1(nu)*pgg1(rho)
          - d_(nu, sigma)*pgg1(mu)*pgg1(rho)
          - d_(nu, rho)*pgg2(mu)*pgg2(sigma));

* propagator of photon in xi gauge
id Phot(mu?, nu?, pgg2?) = 1/(pgg2.pgg2) * ( d_(mu, nu) + (1 - 1/xi2)*pgg2(mu)*pgg2(nu)/(pgg2.pgg2));

* choose gauge
*id 1/xi1 = 1;
*id 1/xi2 = 1;

trace4, 1;
print;
.sort

* identify the substituted momenta
id pgg1 = -p2;
id pgg2 = q1 + q2;
id pgg2.pgg2^-1 = s^-1;

* irrevocable constraints
id p1 = q1 + q2 - p2;
id q1.q1 = 0;
id q2.q2 = 0;
id p1.p1 = -mX^2;
id p2.p2 = 0;
id p2.eps = 0;

* kinematics constraints
id q1.q2 = s/2;
id q1.p1 = -t/2;
id q1.p2 = -u/2;
id p1.p2 = s/2;
id q2.p2 = -t/2;
id q2.p1 = -u/2;

id s = - t - u - mX^2;
*id t = - s - u - mX^2;
*id ge = -gg;

Bracket ge, gg, mX, e, Lambda, xi1, xi2;

print;
.sort

.end
