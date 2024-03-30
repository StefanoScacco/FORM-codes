S me, e, E, p, costheta;
* S defines scalar quantities

V p1, p2, k1, k2, eps1, eps2;
* V defines vectors


* The amplitude follows (with real polarizations). Also, the imaginary unit is i_

L Posit = (e^2*((g_(1, eps2)*(-i_*(g_(1, p1) - g_(1, k1)) + me*g_(1))*g_(1, eps1))/(-2*p1.k1) +
          (g_(1, eps1)*(-i_*(g_(1, p1) - g_(1, k2)) + me*g_(1))*g_(1, eps2))/(-2*p1.k2))   ) *

	  (-i_*g_(1, p1) + me*g_(1)) *

          (e^2*((g_(1, eps1)*(-i_*(g_(1, p1) - g_(1, k1)) + me*g_(1))*g_(1, eps2))/(-2*p1.k1) +
          (g_(1, eps2)*(-i_*(g_(1, p1) - g_(1, k2)) + me*g_(1))*g_(1, eps1))/(-2*p1.k2))   ) *

	  (-i_*g_(1, p2) - me*g_(1));

id p2 = k1 + k2 - p1;

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
id eps1.eps1 = 1;
id eps2.eps2 = 1;

* impose scalar products
*id p1.k1 = -E*E - E*p*costheta;
*id p1.k2 = -E*E + E*p*costheta;
*id k1.k2 = -2*E*E;

print;
.sort

.end

         	 
