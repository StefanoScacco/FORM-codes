S me, w, e, s, t, u;
* S defines scalar quantities

V k1, k2, k3, k4, p;
* V defines vectors

T Tr1, Tr2, Tr3, Tr4, Tr5, Tr6;
* T defines tensors

index mu, nu, rho, sigma;
* define some indices

L Phot = -e^4 * ( Tr1(1, mu, nu, rho, sigma)
                + Tr2(2, mu, nu, rho, sigma)
        	+ Tr3(3, mu, nu, rho, sigma) 
		+ Tr4(4, mu, nu, rho, sigma)
                + Tr5(5, mu, nu, rho, sigma)
                + Tr6(6, mu, nu, rho, sigma) ) * d_(mu, nu) * d_(rho, sigma);
                 

* define the tensors needed
id Tr1(1, mu?, nu?, rho?, sigma?) = g_(1, mu)    * (-i_*g_(1, p) + me*g_(1))                             * g_(1, rho)   * (-i_*( g_(1, p) - g_(1, k3) ) + me*g_(1))
   	       	    	  	  * g_(1, sigma) * (-i_*( g_(1, p) + g_(1, k1) + g_(1, k2) ) + me*g_(1)) * g_(1, nu)    * (-i_*( g_(1, p) + g_(1, k1) ) + me*g_(1));

id Tr2(2, mu?, nu?, rho?, sigma?) = g_(1, rho)   * (-i_*g_(1, p) + me*g_(1))                             * g_(1, mu)    * (-i_*( g_(1, p) - g_(1, k1) ) + me*g_(1))
                                  * g_(1, sigma) * (-i_*( g_(1, p) + g_(1, k3) + g_(1, k2) ) + me*g_(1)) * g_(1, nu)    * (-i_*( g_(1, p) + g_(1, k3) ) + me*g_(1));
				  
id Tr3(3, mu?, nu?, rho?, sigma?) = g_(1, mu)    * (-i_*g_(1, p) + me*g_(1))                             * g_(1, sigma) * (-i_*( g_(1, p) - g_(1, k4) ) + me*g_(1))
                                  * g_(1, rho)   * (-i_*( g_(1, p) + g_(1, k1) + g_(1, k2) ) + me*g_(1)) * g_(1, nu)    * (-i_*( g_(1, p) + g_(1, k1) ) + me*g_(1));

id Tr4(4, mu?, nu?, rho?, sigma?) = g_(1, rho)   * (-i_*g_(1, p) - me*g_(1))                             * g_(1, mu)    * (-i_*( g_(1, p) + g_(1, k1) ) - me*g_(1))
                                  * g_(1, nu)    * (-i_*( g_(1, p) + g_(1, k1) + g_(1, k2) ) - me*g_(1)) * g_(1, sigma) * (-i_*( g_(1, p) - g_(1, k3) ) - me*g_(1));

id Tr5(5, mu?, nu?, rho?, sigma?) = g_(1, mu)    * (-i_*g_(1, p) - me*g_(1))                             * g_(1, rho)   * (-i_*( g_(1, p) + g_(1, k3) ) - me*g_(1))
      	      	      	      	  * g_(1, nu)    * (-i_*( g_(1, p) + g_(1, k3) + g_(1, k2) ) - me*g_(1)) * g_(1, sigma) * (-i_*( g_(1, p) - g_(1, k1) ) - me*g_(1));

id Tr6(6, mu?, nu?, rho?, sigma?) = g_(1, sigma) * (-i_*g_(1, p) - me*g_(1))                             * g_(1, mu)    * (-i_*( g_(1, p) + g_(1, k1) ) - me*g_(1))
      	      	      	      	  * g_(1, nu)    * (-i_*( g_(1, p) + g_(1, k1) + g_(1, k2) ) - me*g_(1)) * g_(1, rho)   * (-i_*( g_(1, p) - g_(1, k4) ) - me*g_(1));

* add conservation of energy and definitions
id k4 = - k1 - k2 - k3;
id k1.k1 = 0;
id k2.k2 = 0;
id k3.k3 = 0;
id k4.k4 = 0;
id me = 0;
id k1 = 0;
id k2 = 0;
id k3 = 0;
id k4 = 0;

trace4, 1;
trace4, 2;
trace4, 3;
trace4, 4;
trace4, 5;
trace4, 6;

* impose scalar products
*id k1.k2 = -s/2;
*id k3.k4 = -s/2;
*id k1.k3 = -t/2;
*id k2.k4 = -t/2;
*id k1.k4 = -u/2;
*id k2.k3 = -u/2;

Bracket e, me, p;

print;
.sort

.end
