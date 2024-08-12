S me, s, t, u, e, csi;
* S defines scalar quantities

V p1, p2, p3, p4, q, k, l;
* V defines vectors

T Phot, Tr1, Tr2, Tr3, Tr4, Tr5, Tr6;
* T defines tensors

index mu, nu, rho, sigma;
* define some indices

* The amplitude follows here. Also, the imaginary unit is i_
* note: csi = infty is Lorentz gauge. csi = 1 is Feynman gauge. Result is csi independent!

L Moller = e^4 * (
	           Phot(mu, nu, q) * Phot(rho, sigma, q) * Tr1(1, mu, p2, rho, p4) * Tr2(2, nu, p1, sigma, p3)
                 + Phot(mu, nu, k) * Phot(rho, sigma, k) * Tr3(3, mu, p1, rho, p4) * Tr4(4, nu, p2, sigma, p3)
                 - Phot(mu, nu, q) * Phot(rho, sigma, k) * Tr5(5, mu, p2, sigma, p3, nu, p1, rho, p4)
                 - Phot(mu, nu, k) * Phot(rho, sigma, q) * Tr6(6, mu, p1, sigma, p3, nu, p2, rho, p4)  );
                
* define the tensors needed
id Tr1(1, mu?, p2?, rho?, p4?)   = g_(1, mu) * (-i_*g_(1, p2) + me*g_(1)) * g_(1, rho)   * (-i_*g_(1, p4) + me*g_(1));
id Tr2(2, nu?, p1?, sigma?, p3?) = g_(2, nu) * (-i_*g_(2, p1) + me*g_(2)) * g_(2, sigma) * (-i_*g_(2, p3) + me*g_(2));
id Tr3(3, mu?, p1?, rho?, p4?)   = g_(3, mu) * (-i_*g_(3, p1) + me*g_(3)) * g_(3, rho)   * (-i_*g_(3, p4) + me*g_(3));
id Tr4(4, nu?, p2?, sigma?, p3?) = g_(4, nu) * (-i_*g_(4, p2) + me*g_(4)) * g_(4, sigma) * (-i_*g_(4, p3) + me*g_(4));
id Tr5(5, mu?, p2?, sigma?, p3?, nu?, p1?, rho?, p4?) =
   	      	       	       	   g_(5, mu) * (-i_*g_(5, p2) + me*g_(5)) * g_(5, sigma) * (-i_*g_(5, p3) + me*g_(5)) *
				   g_(5, nu) * (-i_*g_(5, p1) + me*g_(5)) * g_(5, rho)   * (-i_*g_(5, p4) + me*g_(5));
id Tr6(6, mu?, p1?, sigma?, p3?, nu?, p2?, rho?, p4?) =
   	       	    	       	   g_(6, mu) * (-i_*g_(6, p1) + me*g_(6)) * g_(6, sigma) * (-i_*g_(6, p3) + me*g_(6)) *
                                   g_(6, nu) * (-i_*g_(6, p2) + me*g_(6)) * g_(6, rho)   * (-i_*g_(6, p4) + me*g_(6));

id Phot(mu?, nu?, q?) = 1/(q.q) * ( d_(mu, nu) + (1 - 1/csi)*q(mu)*q(nu)/(q.q));

* impose conservation of energy
id q = p1 - p3;
id k = p1 - p4;
id l = p1 + p2;
id p4 = p1 + p2 - p3;

* select your favorite gauge
*id 1/csi = 0;

* calculate all the needed traces
trace4, 1;
trace4, 2;
trace4, 3;
trace4, 4;
trace4, 5;
trace4, 6;

print;
.sort

* impose these constraints to simplify result
id q.q^-1 = t^-1;
id k.k^-1 = u^-1;
id l.l^-1 = s^-1;
id p1.p1 = -me^2;
id p2.p2 = -me^2;
id p3.p3 = -me^2;
id p4.p4 = -me^2;
id p1.p2 = s/2 + me^2;
id p3.p4 = s/2 + me^2;
id p1.p3 = -t/2 - me^2;
id p2.p4 = -t/2	- me^2;
id p1.p4 = -u/2 - me^2;
id p2.p3 = -u/2	- me^2;
*id me = 0;

Bracket e, me;

print;
.sort

.end