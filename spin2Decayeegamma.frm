S m, mX, x, y, z, c12;
* S defines scalar quantities

V pplus, pminus, k, pX, e;
* V defines vectors

T Sumpol, Proj;
* T defines tensors

index mu, nu, rho, sigma;

L Decay = Sumpol(mu, nu, rho, sigma) * e(nu) * e(sigma) *
          (g_(1, mu) * ( -i_*g_(1, pplus) - m*g_(1)) * g_(1, rho) * ( -i_*g_(1, pminus) + m*g_(1)));

* who are the tensors added?
id Sumpol(mu?, nu?, rho?, sigma?) = 1/2*Proj(mu, rho)*Proj(nu, sigma) + 1/2*Proj(mu, sigma)*Proj(nu, rho) - 1/3*Proj(mu, nu)*Proj(rho, sigma);
id Proj(mu?, nu?) = d_(mu, nu) + pX(mu)*pX(nu)/(mX*mX);

* Do the substitution and compute the trace. Substitute k first (kinematically easier)
id k = pplus + pminus - pX; 

* this command computes the trace over the index 1 (the index of the gamma matrices)
trace4, 1;

* Shows the intermediate result
print;
.sort

* Do these substitutions to simplify final result
id e.e = 1;
id k.e = 0;
id pX.e = 0;
id pplus.pplus = -m^2;
id pminus.pminus = -m^2;
id pX.pX = -mX^2;
id k.k = 0;

* insert non trivial scalar products
id pplus.pX = -mX^2*y^2;
id pminus.pX = -mX^2*x^2;
id pplus.pminus = mX^2/2*(-3 + 2*x + 2*y);
id pplus.e = mX^2*x*y*pminus.e^-1 * (c12 - (x + y*c12)*(y + x*c12)/(z^2));
id c12 = (1 - 2*(x+y) + 2*x*y)/(2*x*y);
id z = 1 - x - y;
id m = 0;

Bracket z, mX;

print;
.sort

.end