S me, mX, gg, Lambda, s, t, u, R, S, T, U, xi;
* S defines scalar quantities. I added quantities for 2 systems of reference.

V k1, k2, k3, k4, q, k, l, m1, m2, m3, m4, ep1, ep2, ep3, ep4, em1, em2, em3, em4, ki, kj;
* Choice of photon polarizations: + is ep and - is em, so we distinguish the two. Also, define useful momenta that we will set

T Sumpol, FeynXgg, Proj;
* T defines tensors

index alpha, beta, gamma, delta, mu, nu, rho, sigma;
* define some indices

* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
* The Feynman rule tensor has been defined FeynXgg(mu, nu, rho, sigma, ki, kj)

* note 1: you can check Ward Identities by substituting ki to epi or emi, but CANCELLING ki.epi = 0 and ki.emi = 0 (i = 1, 2, 3, 4)
* note 2: xi = infty is Lorentz gauge. xi = 1 is Feynman gauge. Result is xi independent!
* note 3: because photon polarizations e3 and e4 get barred, ep3_bar = em3 and ep4_bar = em4 and viceversa. So, Mpppp needs ep1, ep2, em3, em4 (invert helicities of 3, 4)

L Mpppp = (gg/Lambda)^2 * ep1(mu) * ep2(nu) * em3(rho) * em4(sigma) *
         ( FeynXgg(alpha, beta, mu, nu, m1, m2)    * Sumpol(alpha, beta, gamma, delta, q)/S * FeynXgg(gamma, delta, rho, sigma, k3, k4)
         + FeynXgg(alpha, beta, mu, rho, m1, k3)   * Sumpol(alpha, beta, gamma, delta, k)/T * FeynXgg(gamma, delta, nu, sigma, m2, k4)
         + FeynXgg(alpha, beta, mu, sigma, m1, k4) * Sumpol(alpha, beta, gamma, delta, l)/U * FeynXgg(gamma, delta, nu, rho, m2, k3));
	 
L Mpppm = (gg/Lambda)^2 * ep1(mu) * ep2(nu) * em3(rho) * ep4(sigma) *
         ( FeynXgg(alpha, beta, mu, nu, m1, m2)    * Sumpol(alpha, beta, gamma, delta, q)/S * FeynXgg(gamma, delta, rho, sigma, k3, k4)
         + FeynXgg(alpha, beta, mu, rho, m1, k3)   * Sumpol(alpha, beta, gamma, delta, k)/T * FeynXgg(gamma, delta, nu, sigma, m2, k4)
         + FeynXgg(alpha, beta, mu, sigma, m1, k4) * Sumpol(alpha, beta, gamma, delta, l)/U * FeynXgg(gamma, delta, nu, rho, m2, k3));

L Mppmm = (gg/Lambda)^2 * ep1(mu) * ep2(nu) * ep3(rho) * ep4(sigma) *
         ( FeynXgg(alpha, beta, mu, nu, m1, m2)    * Sumpol(alpha, beta, gamma, delta, q)/S * FeynXgg(gamma, delta, rho, sigma, k3, k4)
         + FeynXgg(alpha, beta, mu, rho, m1, k3)   * Sumpol(alpha, beta, gamma, delta, k)/T * FeynXgg(gamma, delta, nu, sigma, m2, k4)
         + FeynXgg(alpha, beta, mu, sigma, m1, k4) * Sumpol(alpha, beta, gamma, delta, l)/U * FeynXgg(gamma, delta, nu, rho, m2, k3));

L Mpmpm = (gg/Lambda)^2 * ep1(mu) * em2(nu) * em3(rho) * ep4(sigma) *
         ( FeynXgg(alpha, beta, mu, nu, m1, m2)    * Sumpol(alpha, beta, gamma, delta, q)/S * FeynXgg(gamma, delta, rho, sigma, k3, k4)
         + FeynXgg(alpha, beta, mu, rho, m1, k3)   * Sumpol(alpha, beta, gamma, delta, k)/T * FeynXgg(gamma, delta, nu, sigma, m2, k4)
         + FeynXgg(alpha, beta, mu, sigma, m1, k4) * Sumpol(alpha, beta, gamma, delta, l)/U * FeynXgg(gamma, delta, nu, rho, m2, k3));

L Mpmmp = (gg/Lambda)^2 * ep1(mu) * em2(nu) * ep3(rho) * em4(sigma) *
         ( FeynXgg(alpha, beta, mu, nu, m1, m2)    * Sumpol(alpha, beta, gamma, delta, q)/S * FeynXgg(gamma, delta, rho, sigma, k3, k4)
         + FeynXgg(alpha, beta, mu, rho, m1, k3)   * Sumpol(alpha, beta, gamma, delta, k)/T * FeynXgg(gamma, delta, nu, sigma, m2, k4)
         + FeynXgg(alpha, beta, mu, sigma, m1, k4) * Sumpol(alpha, beta, gamma, delta, l)/U * FeynXgg(gamma, delta, nu, rho, m2, k3));

* substitute Feynman rule
id FeynXgg(mu?, nu?, rho?, sigma?, ki?, kj?) =
          - d_(rho, sigma)*(ki(mu)*kj(nu) + ki(nu)*kj(mu))
          + d_(mu, rho)*kj(nu)*ki(sigma)
          + d_(mu, sigma)*ki(nu)*kj(rho)
          + d_(nu, sigma)*ki(mu)*kj(rho)
          + d_(nu, rho)*kj(mu)*ki(sigma)
          - ki.kj*(d_(mu, sigma)*d_(nu, rho) + d_(nu, sigma)*d_(mu, rho))

          + 1/xi*(
          - d_(mu, rho)*kj(nu)*kj(sigma)
          - d_(mu, sigma)*ki(nu)*ki(rho)
          - d_(nu, sigma)*ki(mu)*ki(rho)
          - d_(nu, rho)*kj(mu)*kj(sigma));
	  
* define last tensors needed
id Sumpol(mu?, nu?, alpha?, beta?, q?) = 1/2*Proj(mu, alpha, q)*Proj(nu, beta, q) + 1/2*Proj(mu, beta, q)*Proj(nu, alpha, q) - 1/3*Proj(mu, nu, q)*Proj(alpha, beta, q);
id Proj(mu?, nu?, q?) = d_(mu, nu) + q(mu)*q(nu)/(mX*mX);

* impose definitions
id q = k1 + k2;
id k = k1 - k3;
id l = k1 - k4;
id m1 = -k1;
id m2 = -k2;
id m3 = -k3;
id m4 = -k4;
*id S^-1 = (q.q + mX*mX)^-1;
*id T^-1 = (k.k + mX*mX)^-1;
*id U^-1 = (l.l + mX*mX)^-1;

* simplify result (before gauge invariance -> they are enough needed to verify xi independence and Ward identities)
id k1.k1 = 0;
id k2.k2 = 0;
id k3.k3 = 0;
id k4.k4 = 0;

id k1.ep1 = 0;
id k2.ep2 = 0;
id k3.ep3 = 0;
id k4.ep4 = 0;

id k1.em1 = 0;
id k2.em2 = 0;
id k3.em3 = 0;
id k4.em4 = 0;

id ep1.ep1 = 1;
id ep2.ep2 = 1;
id ep3.ep3 = 1;
id ep4.ep4 = 1;

id em1.em1 = 1;
id em2.em2 = 1;
id em3.em3 = 1;
id em4.em4 = 1;

* start imposing kinematics in s, t, u (after gauge invariance -> need to comment all this to check for xi independence and Ward identities)
id q.q = s^2;
id k.k = t^2;
id l.l = u^2;

id k1.k2 = s/2;
id k3.k4 = s/2;
id k1.k3 = -t/2;
id k2.k4 = -t/2;
id k1.k4 = -u/2;
id k2.k3 = -u/2;

* these are all dependent on the polarization basis chosen
id k1.ep2 = 0;
id k1.em2 = 0;
id k1.ep3 = -R;
id k1.em3 = -R;
id k1.ep4 = R;
id k1.em4 = R;

id k2.ep1 = 0;
id k2.em1 = 0;
id k2.ep3 = R;
id k2.em3 = R;
id k2.ep4 = -R;
id k2.em4 = -R;

id k3.ep1 = R;
id k3.em1 = R;
id k3.ep2 = -R;
id k3.em2 = -R;
id k3.ep4 = 0;
id k3.em4 = 0;

id k4.ep1 = -R;
id k4.em1 = -R;
id k4.ep2 = R;
id k4.em2 = R;
id k4.ep3 = 0;
id k4.em3 = 0;

id R^2 = -t*u/(2*s);

id ep1.ep2 = 0;
id ep1.em2 = -1;
id ep1.ep3 = -u/s;
id ep1.em3 = t/s;
id ep1.ep4 = -t/s;
id ep1.em4 = u/s;

id em1.ep2 = -1;
id em1.em2 = 0;
id em1.ep3 = t/s;
id em1.em3 = -u/s;
id em1.ep4 = u/s;
id em1.em4 = -t/s;

id ep2.ep3 = -t/s;
id ep2.em3 = u/s;
id ep2.ep4 = -u/s;
id ep2.em4 = t/s;

id em2.ep3 = u/s;
id em2.em3 = -t/s;
id em2.ep4 = t/s;
id em2.em4 = -u/s;

id ep3.ep4 = 0;
id ep3.em4 = -1;

id em3.ep4 = -1;
id em3.em4 = 0;

* useful simplificating constraints
id u = - s - t;
id s = - t - u;
*id t = - s - u;


Bracket gg, Lambda, mX, R, S, T, U;


print;
.sort

.end

