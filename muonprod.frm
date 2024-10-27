S me, mmu, s, t, u, e, E, p, ppr, costheta, xi;
* S defines scalar quantities

V p1, p2, p3, p4, q;
* V defines vectors

T Phot, Tr1, Tr2;
* T defines tensors

index mu, nu, rho, sigma;
* define some indices

* The amplitude follows here. Also, the imaginary unit is i_
* note: xi = infty is Lorentz gauge. xi = 1 is Feynman gauge. Result is xi independent!

L Bhabha = e^4 * Phot(mu, nu, q) * Phot(rho, sigma, q) * Tr1(1, mu, p1, rho, p2) * Tr2(2, nu, p4, sigma, p3);


* define the tensors needed
id Tr1(1, mu?, p1?, rho?, p2?)   = g_(1, mu) * (-i_*g_(1, p1) + me*g_(1)) * g_(1, rho)   * (-i_*g_(1, p2) - me*g_(1));
id Tr2(2, nu?, p4?, sigma?, p3?) = g_(2, nu) * (-i_*g_(2, p4) - mmu*g_(2)) * g_(2, sigma) * (-i_*g_(2, p3) + mmu*g_(2));

id Phot(mu?, nu?, q?) = 1/(q.q) * ( d_(mu, nu) + (1 - 1/xi)*q(mu)*q(nu)/(q.q));

* select your favorite gauge
id 1/xi = 1;

trace4, 1;
trace4, 2;

* kinematics
id q.q^-1 = s^-1;
*id p1.p2 = -(E^2 + p^2);
*id p3.p4 = -(E^2 + ppr^2);
*id p1.p3 = -(E^2 - p*ppr*costheta);
*id p2.p4 = -(E^2 - p*ppr*costheta);
*id p1.p4 = -(E^2 + p*ppr*costheta);
*id p2.p3 = -(E^2 + p*ppr*costheta);
id p^2 = E^2 - me^2;
id ppr^2 = E^2 - mmu^2;

Bracket e, s, E;

print;
.sort

