S m, mX;
* S defines scalar quantities

V pplus, pminus, pX;
* V defines vectors

T Sumpol, Proj;
* T defines tensors

index mu, nu, rho, sigma;

L Decay = Sumpol(mu, nu, rho, sigma) * ((pminus(mu) - pplus(mu)) * (pplus(rho) - pminus(rho))) *
	  (g_(1, nu) * ( -i_*g_(1, pplus) - m*g_(1)) * g_(1, sigma) * ( -i_*g_(1, pminus) + m*g_(1))); 

* who are the tensors added?
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + pX(mu)*pX(nu)/(mX*mX);

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