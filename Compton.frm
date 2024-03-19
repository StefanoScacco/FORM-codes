S m, w, wpr;
* S defines scalar quantities

V p, ppr, k, kpr, e, epr;
* V defines vectors

*
* The amplitude follows (with real polarizations). Also, the imaginary unit is i_
*
L Comp = ((g_(1, epr)*(-i_*g_(1, k))*g_(1, e))/(2*p.k) - (g_(1, e)*(i_*g_(1, kpr))*g_(1, epr))/(2*p.kpr)) *
         (-i_*g_(1, p) + m*g_(1)) *
	 ((g_(1, e)*(-i_*g_(1, k))*g_(1, epr))/(2*p.k) - (g_(1, epr)*(i_*g_(1, kpr))*g_(1, e))/(2*p.kpr)) *
	 (-i_*g_(1, ppr) + m*g_(1));

* Do the substitution and compute the trace
* ppr has been integrated
id ppr = p + k - kpr;

* this command computes the trace over the index 1 (the index of the gamma matrices)
trace4, 1;

* Shows the intermediate result
print;
.sort

* Do these substitutions to simplify final result
id p.e = 0;
id p.epr = 0;
id p.p = -m^2;
id ppr.ppr = -m^2;
id k.k = 0;
id kpr.kpr = 0;
id k.e = 0;
id kpr.epr = 0;
id e.e = 1;
id epr.epr = 1;

*try extra constraints
id p.k = -m*w;
id p.kpr = -m*wpr;
id k.kpr = m*wpr-m*w;

print;
.sort

.end