S m, mX;
* S defines scalar quantities

V pplus, pminus, pX;
* V defines vectors

index mu, nu, rho, sigma;

L Decay = ( 1/2 * ( (d_(mu, rho) + pX(mu)*pX(rho)/(mX*mX) ) * (d_(nu, sigma) + pX(nu)*pX(sigma)/(mX*mX)) +
  	  (d_(nu, rho) + pX(nu)*pX(rho)/(mX*mX)) * (d_(mu, sigma) + pX(mu)*pX(sigma)/(mX*mX)) ) -
          1/3 * (d_(mu, nu) + pX(mu)*pX(nu)/(mX*mX)) * (d_(rho, sigma) + pX(rho)*pX(sigma)/(mX*mX)) ) *
	  ((pminus(mu) - pplus(mu)) * (pplus(rho) - pminus(rho))) *
	  (g_(1, nu) *
       	  ( -i_*g_(1, pplus) - m*g_(1)) *
       	  g_(1, sigma) *
	  ( -i_*g_(1, pminus) + m*g_(1))); 


* Do the substitution and compute the trace
id pX = pplus + pminus;

* this command computes the trace over the index 1 (the index of the gamma matrices)
trace4, 1;

* Shows the intermediate result
print;
.sort

* Do these substitutions to simplify final result
id pplus.pplus = -m^2;
id pminus.pminus = -m^2;
id pX.pX = -mX^2;

print;
.sort

.end