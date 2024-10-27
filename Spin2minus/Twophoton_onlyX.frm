S me, mX, gg3, Lambda, s, t, u, R, S, T, U, w, ctheta;
* S defines scalar quantities. I added quantities for 2 systems of reference.

V k1, k2, k3, k4, m1, m2, m3, m4, q, k, l, ep1, ep2, ep3, ep4, em1, em2, em3, em4;
* Choice of photon polarizations: + is ep and - is em, so we distinguish the two. Define useful momenta that we will set

T Sumpol, Proj;
* T defines tensors

index alpha, beta, gamma, delta, mu, nu, rho, sigma, tau1, tau2, tau3, tau4;
* define some indices

* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
* The Feynman rule tensor has been defined FeynXgg(mu, nu, rho, sigma, ki, kj)

* note 1: you can check Ward Identities by substituting ki to epi or emi, but CANCELLING ki.epi = 0 and ki.emi = 0 (i = 1, 2, 3, 4)
* note 2: xi = infty is Lorentz gauge. xi = 1 is Feynman gauge. Result is xi independent!
* note 3: because photon polarizations e3 and e4 get barred, ep3_bar = em3 and ep4_bar = em4 and viceversa. So, Mpppp needs ep1, ep2, em3, em4 (invert helicities of 3, 4)

L Mpppp = 4 * (gg3/Lambda^3)^2 * ep1(mu) * ep2(nu) * em3(rho) * em4(sigma) *
  	 ( e_(tau1, mu, tau2, nu)     * (k1(alpha)*k2(beta)*k1(tau1)*k2(tau2)  - k2(alpha)*k1(beta)*k2(tau1)*k1(tau2)) *
	   Sumpol(alpha, beta, gamma, delta, q)/S *
	   e_(tau3, rho, tau4, sigma) * (k3(gamma)*k4(delta)*k3(tau3)*k4(tau4) - k4(gamma)*k3(delta)*k4(tau3)*k3(tau4))

	 + e_(tau1, mu, tau2, rho)    * (k1(alpha)*k3(beta)*k1(tau1)*k3(tau2)  - k3(alpha)*k1(beta)*k3(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, k)/T *
	   e_(tau3, nu, tau4, sigma)  * (k2(gamma)*k4(delta)*k2(tau3)*k4(tau4) - k4(gamma)*k2(delta)*k4(tau3)*k2(tau4))

	 + e_(tau1, mu, tau2, sigma)  * (k1(alpha)*k4(beta)*k1(tau1)*k4(tau2)  - k4(alpha)*k1(beta)*k4(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, l)/U *
	   e_(tau3, rho, tau4, nu)    * (k2(gamma)*k3(delta)*k2(tau3)*k3(tau4) - k3(gamma)*k2(delta)*k3(tau3)*k2(tau4)) );
	

L Mpppm = 4 * (gg3/Lambda^3)^2 * ep1(mu) * ep2(nu) * em3(rho) * ep4(sigma) *
         ( e_(tau1, mu, tau2, nu)     * (k1(alpha)*k2(beta)*k1(tau1)*k2(tau2)  - k2(alpha)*k1(beta)*k2(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, q)/S *
           e_(tau3, rho, tau4, sigma) * (k3(gamma)*k4(delta)*k3(tau3)*k4(tau4) - k4(gamma)*k3(delta)*k4(tau3)*k3(tau4))

         + e_(tau1, mu, tau2, rho)    * (k1(alpha)*k3(beta)*k1(tau1)*k3(tau2)  - k3(alpha)*k1(beta)*k3(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, k)/T *
           e_(tau3, nu, tau4, sigma)  * (k2(gamma)*k4(delta)*k2(tau3)*k4(tau4) - k4(gamma)*k2(delta)*k4(tau3)*k2(tau4))

         + e_(tau1, mu, tau2, sigma)  * (k1(alpha)*k4(beta)*k1(tau1)*k4(tau2)  - k4(alpha)*k1(beta)*k4(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, l)/U *
           e_(tau3, rho, tau4, nu)    * (k2(gamma)*k3(delta)*k2(tau3)*k3(tau4) - k3(gamma)*k2(delta)*k3(tau3)*k2(tau4)) );


L Mppmm = 4 * (gg3/Lambda^3)^2 * ep1(mu) * ep2(nu) * ep3(rho) * ep4(sigma) *
         ( e_(tau1, mu, tau2, nu)     * (k1(alpha)*k2(beta)*k1(tau1)*k2(tau2)  - k2(alpha)*k1(beta)*k2(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, q)/S *
           e_(tau3, rho, tau4, sigma) * (k3(gamma)*k4(delta)*k3(tau3)*k4(tau4) - k4(gamma)*k3(delta)*k4(tau3)*k3(tau4))

         + e_(tau1, mu, tau2, rho)    * (k1(alpha)*k3(beta)*k1(tau1)*k3(tau2)  - k3(alpha)*k1(beta)*k3(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, k)/T *
           e_(tau3, nu, tau4, sigma)  * (k2(gamma)*k4(delta)*k2(tau3)*k4(tau4) - k4(gamma)*k2(delta)*k4(tau3)*k2(tau4))

         + e_(tau1, mu, tau2, sigma)  * (k1(alpha)*k4(beta)*k1(tau1)*k4(tau2)  - k4(alpha)*k1(beta)*k4(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, l)/U *
           e_(tau3, rho, tau4, nu)    * (k2(gamma)*k3(delta)*k2(tau3)*k3(tau4) - k3(gamma)*k2(delta)*k3(tau3)*k2(tau4)) );


L Mpmpm = 4 * (gg3/Lambda^3)^2 * ep1(mu) * em2(nu) * em3(rho) * ep4(sigma) *
         ( e_(tau1, mu, tau2, nu)     * (k1(alpha)*k2(beta)*k1(tau1)*k2(tau2)  - k2(alpha)*k1(beta)*k2(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, q)/S *
           e_(tau3, rho, tau4, sigma) * (k3(gamma)*k4(delta)*k3(tau3)*k4(tau4) - k4(gamma)*k3(delta)*k4(tau3)*k3(tau4))

         + e_(tau1, mu, tau2, rho)    * (k1(alpha)*k3(beta)*k1(tau1)*k3(tau2)  - k3(alpha)*k1(beta)*k3(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, k)/T *
           e_(tau3, nu, tau4, sigma)  * (k2(gamma)*k4(delta)*k2(tau3)*k4(tau4) - k4(gamma)*k2(delta)*k4(tau3)*k2(tau4))

         + e_(tau1, mu, tau2, sigma)  * (k1(alpha)*k4(beta)*k1(tau1)*k4(tau2)  - k4(alpha)*k1(beta)*k4(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, l)/U *
           e_(tau3, rho, tau4, nu)    * (k2(gamma)*k3(delta)*k2(tau3)*k3(tau4) - k3(gamma)*k2(delta)*k3(tau3)*k2(tau4)) );


L Mpmmp = 4 * (gg3/Lambda^3)^2 * ep1(mu) * em2(nu) * ep3(rho) * em4(sigma) *
         ( e_(tau1, mu, tau2, nu)     * (k1(alpha)*k2(beta)*k1(tau1)*k2(tau2)  - k2(alpha)*k1(beta)*k2(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, q)/S *
           e_(tau3, rho, tau4, sigma) * (k3(gamma)*k4(delta)*k3(tau3)*k4(tau4) - k4(gamma)*k3(delta)*k4(tau3)*k3(tau4))

         + e_(tau1, mu, tau2, rho)    * (k1(alpha)*k3(beta)*k1(tau1)*k3(tau2)  - k3(alpha)*k1(beta)*k3(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, k)/T *
           e_(tau3, nu, tau4, sigma)  * (k2(gamma)*k4(delta)*k2(tau3)*k4(tau4) - k4(gamma)*k2(delta)*k4(tau3)*k2(tau4))

         + e_(tau1, mu, tau2, sigma)  * (k1(alpha)*k4(beta)*k1(tau1)*k4(tau2)  - k4(alpha)*k1(beta)*k4(tau1)*k1(tau2)) *
           Sumpol(alpha, beta, gamma, delta, l)/U *
           e_(tau3, rho, tau4, nu)    * (k2(gamma)*k3(delta)*k2(tau3)*k3(tau4) - k3(gamma)*k2(delta)*k3(tau3)*k2(tau4)) );

* define generic tensor product for Levi Civita
id e_(k1?, k2?, k3?, k4?) * e_(m1?, m2?, m3?, m4?) =
      			(k1.m1)*(k2.m2)*(k3.m3)*(k4.m4) - (k1.m1)*(k2.m2)*(k3.m4)*(k4.m3) - (k1.m1)*(k2.m3)*(k3.m2)*(k4.m4) + (k1.m1)*(k2.m3)*(k3.m4)*(k4.m2) 
	              + (k1.m1)*(k2.m4)*(k3.m2)*(k4.m3) - (k1.m1)*(k2.m4)*(k3.m3)*(k4.m2) - (k1.m2)*(k2.m1)*(k3.m3)*(k4.m4) + (k1.m2)*(k2.m1)*(k3.m4)*(k4.m3)
	              + (k1.m2)*(k2.m3)*(k3.m1)*(k4.m4) - (k1.m2)*(k2.m3)*(k3.m4)*(k4.m1) - (k1.m2)*(k2.m4)*(k3.m1)*(k4.m3) + (k1.m2)*(k2.m4)*(k3.m3)*(k4.m1)
	              + (k1.m3)*(k2.m1)*(k3.m2)*(k4.m4) - (k1.m3)*(k2.m1)*(k3.m4)*(k4.m2) - (k1.m3)*(k2.m2)*(k3.m1)*(k4.m4) + (k1.m3)*(k2.m2)*(k3.m4)*(k4.m1)
		      + (k1.m3)*(k2.m4)*(k3.m1)*(k4.m2) - (k1.m3)*(k2.m4)*(k3.m2)*(k4.m1) - (k1.m4)*(k2.m1)*(k3.m2)*(k4.m3) + (k1.m4)*(k2.m1)*(k3.m3)*(k4.m2)
	              + (k1.m4)*(k2.m2)*(k3.m1)*(k4.m3) - (k1.m4)*(k2.m2)*(k3.m3)*(k4.m1) - (k1.m4)*(k2.m3)*(k3.m1)*(k4.m2) + (k1.m4)*(k2.m3)*(k3.m2)*(k4.m1);

* define last tensors needed
id Sumpol(mu?, nu?, alpha?, beta?, q?) = 1/2*Proj(mu, alpha, q)*Proj(nu, beta, q) + 1/2*Proj(mu, beta, q)*Proj(nu, alpha, q) - 1/3*Proj(mu, nu, q)*Proj(alpha, beta, q);
id Proj(mu?, nu?, q?) = d_(mu, nu) + q(mu)*q(nu)/(mX*mX);

* impose definitions
id q = k1 + k2;
id k = k1 - k3;
id l = k1 - k4;
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

* start imposing kinematics in s, t, u 
id q.q = -s;
id k.k = -t;
id l.l = -u;

id k1.k2 = -s/2;
id k3.k4 = -s/2;
id k1.k3 = t/2;
id k2.k4 = t/2;
id k1.k4 = u/2;
id k2.k3 = u/2;

* these are all dependent the polarization basis chosen
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

id R^2 = t*u/(2*s);

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
id t = - s - u;
id s = - t - u;

Bracket gg3, Lambda, mX, R, S, T, U;


print;
.sort

.end



