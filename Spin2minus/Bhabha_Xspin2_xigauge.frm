S me, mX, s, t, u, e, ge, Lambda, xi;
* S defines scalar quantities

V p1, p2, p3, p4, q, k, l;
* V defines vectors

T XresPhot1, XresPhot2, Sumpol, Proj, Phot;
T Tr11, Tr12, Tr13, Tr14;
T Tr21, Tr22, Tr23, Tr24;
T Tr31, Tr32, Tr33, Tr34;
T Tr41, Tr42, Tr43, Tr44;
T Tr51, Tr52, Tr53, Tr54;
T Tr61, Tr62, Tr63, Tr64;
* T defines tensors

index mu, nu, alpha, beta, rho, sigma, gamma, lambda;
* define some indices

* The amplitude follows here. Also, the imaginary unit is i_
* note: xi = infty is Lorentz gauge. xi = 1 is Feynman gauge. Result is xi independent!

L BhabhaS =
	  e^4 * Phot(mu, nu, q) * Phot(rho, sigma, q) * Tr11(1, mu, p1, rho, p2) * Tr21(5, nu, p4, sigma, p3)

	+ e^2 * ge^2/(4*Lambda^2) * Phot(mu, nu, q) * Sumpol(rho, sigma, alpha, beta, q)/(q.q + mX^2) * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta))
	      			    	     	      * Tr12(2, mu, p1, rho, p2) * Tr22(6, nu, p4, sigma, p3)

	+ e^2 * ge^2/(4*Lambda^2) * Phot(rho, sigma, q) * Sumpol(mu, nu, alpha, beta, q)/(q.q + mX^2) * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta))
	      			    	      	      * Tr13(3, mu, p1, rho, p2) * Tr23(7, nu, p4, sigma, p3)

        + ge^4/(16*Lambda^4) * Sumpol(rho, sigma, alpha, beta, q)/(q.q + mX^2) * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta))
	  		     * Sumpol(mu, nu, gamma, lambda, q)/(q.q + mX^2)   * (p2(gamma) - p1(gamma)) * (p3(lambda) - p4(lambda))
			       		      	      * Tr14(4, mu, p1, rho, p2) * Tr24(8, nu, p4, sigma, p3);

L BhabhaT =
  	  e^4 * Phot(mu, nu, k) * Phot(rho, sigma, k) * Tr31(9, mu, p1, rho, p3) * Tr41(13, nu, p4, sigma, p2)

        + e^2 * ge^2/(4*Lambda^2) * Phot(mu, nu, k) * Sumpol(rho, sigma, alpha, beta, k)/(k.k + mX^2) * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta))
                                                      * Tr32(10, mu, p1, rho, p3) * Tr42(14, nu, p4, sigma, p2)

        + e^2 * ge^2/(4*Lambda^2) * Phot(rho, sigma, k) * Sumpol(mu, nu, alpha, beta, k)/(k.k + mX^2) * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta))
                                                      * Tr33(11, mu, p1, rho, p3) * Tr43(15, nu, p4, sigma, p2)

        + ge^4/(16*Lambda^4) * Sumpol(rho, sigma, alpha, beta, k)/(k.k + mX^2) * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta))
                             * Sumpol(mu, nu, gamma, lambda, k)/(k.k + mX^2)   * (p3(gamma) + p1(gamma)) * (p2(lambda) + p4(lambda))
                                                      * Tr34(12, mu, p1, rho, p3) * Tr44(16, nu, p4, sigma, p2);

L BhabhaST =
  	- e^4 * Phot(mu, nu, q) * Phot(rho, sigma, k) * Tr51(17, mu, p1, rho, p3, nu, p4, sigma, p2)
	- e^4 * Phot(mu, nu, k) * Phot(rho, sigma, q) * Tr61(21, mu, p1, rho, p2, nu, p4, sigma, p3)
	
	- e^2 * ge^2/(4*Lambda^2) * Phot(mu, nu, q) * Sumpol(rho, sigma, alpha, beta, k)/(k.k + mX^2) * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta))
	      			    	     	      * Tr52(18, mu, p1, rho, p3, nu, p4, sigma, p2)
        - e^2 * ge^2/(4*Lambda^2) * Phot(mu, nu, k) * Sumpol(rho, sigma, alpha, beta, q)/(q.q + mX^2) * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta))
	      			    	     	      * Tr62(22, mu, p1, rho, p2, nu, p4, sigma, p3)
						      
	- e^2 * ge^2/(4*Lambda^2) * Phot(rho, sigma, k) * Sumpol(mu, nu, alpha, beta, q)/(q.q + mX^2) * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta))
	      			    	      	      * Tr53(19, mu, p1, rho, p3, nu, p4, sigma, p2)
        - e^2 * ge^2/(4*Lambda^2) * Phot(rho, sigma, q) * Sumpol(mu, nu, alpha, beta, k)/(k.k + mX^2) * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta))
	      			    	      	      *	Tr63(23, mu, p1, rho, p2, nu, p4, sigma, p3)

	- ge^4/(16*Lambda^4) * Sumpol(mu, nu, alpha, beta, q)/(q.q + mX^2)         * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta))
	  		     * Sumpol(rho, sigma, gamma, lambda, k)/(k.k + mX^2)   * (p3(gamma) + p1(gamma)) * (p2(lambda) + p4(lambda))
			       		      	      * Tr54(20, mu, p1, rho, p3, nu, p4, sigma, p2)
	- ge^4/(16*Lambda^4) * Sumpol(mu, nu, alpha, beta, k)/(k.k + mX^2)         * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta))
                             * Sumpol(rho, sigma, gamma, lambda, q)/(q.q + mX^2)   * (p2(gamma) - p1(gamma)) * (p3(lambda) - p4(lambda))
			       		   	      * Tr64(24, mu, p1, rho, p2, nu, p4, sigma, p3);


* define the traces needed
id Tr11(1, mu?, p1?, rho?, p2?)    =           g_(1, mu)  * (-i_*g_(1, p1)  + me*g_(1))  *           g_(1, rho)    * (-i_*g_(1, p2)  - me*g_(1));
id Tr12(2, mu?, p1?, rho?, p2?)    =           g_(2, mu)  * (-i_*g_(2, p1)  + me*g_(2))  * g5_(2) *  g_(2, rho)    * (-i_*g_(2, p2)  - me*g_(2));
id Tr13(3, mu?, p1?, rho?, p2?)    = g5_(3) *  g_(3, mu)  * (-i_*g_(3, p1)  + me*g_(3))  *           g_(3, rho)    * (-i_*g_(3, p2)  - me*g_(3));
id Tr14(4, mu?, p1?, rho?, p2?)    = g5_(4) *  g_(4, mu)  * (-i_*g_(4, p1)  + me*g_(4))  * g5_(4) *  g_(4, rho)    * (-i_*g_(4, p2)  - me*g_(4));

id Tr21(5, nu?, p4?, sigma?, p3?)  =           g_(5, nu)  * (-i_*g_(5, p4)  - me*g_(5))  *           g_(5, sigma)  * (-i_*g_(5, p3)  + me*g_(5));
id Tr22(6, nu?, p4?, sigma?, p3?)  =           g_(6, nu)  * (-i_*g_(6, p4)  - me*g_(6))  * g5_(6) *  g_(6, sigma)  * (-i_*g_(6, p3)  + me*g_(6));
id Tr23(7, nu?, p4?, sigma?, p3?)  = g5_(7) *  g_(7, nu)  * (-i_*g_(7, p4)  - me*g_(7))  *           g_(7, sigma)  * (-i_*g_(7, p3)  + me*g_(7));
id Tr24(8, nu?, p4?, sigma?, p3?)  = g5_(8) *  g_(8, nu)  * (-i_*g_(8, p4)  - me*g_(8))  * g5_(8) *  g_(8, sigma)  * (-i_*g_(8, p3)  + me*g_(8));

id Tr31(9, mu?, p1?, rho?, p3?)    =           g_(9, mu)  * (-i_*g_(9, p1)  + me*g_(9))  *           g_(9, rho)    * (-i_*g_(9, p3)  + me*g_(9));
id Tr32(10, mu?, p1?, rho?, p3?)   =           g_(10, mu) * (-i_*g_(10, p1) + me*g_(10)) * g5_(10) * g_(10, rho)   * (-i_*g_(10, p3) + me*g_(10));
id Tr33(11, mu?, p1?, rho?, p3?)   = g5_(11) * g_(11, mu) * (-i_*g_(11, p1) + me*g_(11)) *           g_(11, rho)   * (-i_*g_(11, p3) + me*g_(11));
id Tr34(12, mu?, p1?, rho?, p3?)   = g5_(12) * g_(12, mu) * (-i_*g_(12, p1) + me*g_(12)) * g5_(12) * g_(12, rho)   * (-i_*g_(12, p3) + me*g_(12));

id Tr41(13, nu?, p4?, sigma?, p2?) =           g_(13, nu) * (-i_*g_(13, p4) - me*g_(13)) *           g_(13, sigma) * (-i_*g_(13, p2) - me*g_(13));
id Tr42(14, nu?, p4?, sigma?, p2?) =           g_(14, nu) * (-i_*g_(14, p4) - me*g_(14)) * g5_(14) * g_(14, sigma) * (-i_*g_(14, p2) - me*g_(14));
id Tr43(15, nu?, p4?, sigma?, p2?) = g5_(15) * g_(15, nu) * (-i_*g_(15, p4) - me*g_(15)) *           g_(15, sigma) * (-i_*g_(15, p2) - me*g_(15));
id Tr44(16, nu?, p4?, sigma?, p2?) = g5_(16) * g_(16, nu) * (-i_*g_(16, p4) - me*g_(16)) * g5_(16) * g_(16, sigma) * (-i_*g_(16, p2) - me*g_(16));


id Tr51(17, mu?, p1?, rho?, p3?, nu?, p4?, sigma?, p2?) =
         	      	       	       	     g_(17, mu) * (-i_*g_(17, p1) + me*g_(17)) *           g_(17, rho)   * (-i_*g_(17, p3) + me*g_(17)) *
				             g_(17, nu) * (-i_*g_(17, p4) - me*g_(17)) *           g_(17, sigma) * (-i_*g_(17, p2) - me*g_(17));
id Tr52(18, mu?, p1?, rho?, p3?, nu?, p4?, sigma?, p2?) =
                                             g_(18, mu) * (-i_*g_(18, p1) + me*g_(18)) * g5_(18) * g_(18, rho)   * (-i_*g_(18, p3) + me*g_(18)) *
                                             g_(18, nu) * (-i_*g_(18, p4) - me*g_(18)) * g5_(18) * g_(18, sigma) * (-i_*g_(18, p2) - me*g_(18));
id Tr53(19, mu?, p1?, rho?, p3?, nu?, p4?, sigma?, p2?) =
                                   g5_(19) * g_(19, mu) * (-i_*g_(19, p1) + me*g_(19)) *           g_(19, rho)   * (-i_*g_(19, p3) + me*g_(19)) *
                                   g5_(19) * g_(19, nu) * (-i_*g_(19, p4) - me*g_(19)) *           g_(19, sigma) * (-i_*g_(19, p2) - me*g_(19));
id Tr54(20, mu?, p1?, rho?, p3?, nu?, p4?, sigma?, p2?) =
                                   g5_(20) * g_(20, mu) * (-i_*g_(20, p1) + me*g_(20)) * g5_(20) * g_(20, rho)   * (-i_*g_(20, p3) + me*g_(20)) *
                                   g5_(20) * g_(20, nu) * (-i_*g_(20, p4) - me*g_(20)) * g5_(20) * g_(20, sigma) * (-i_*g_(20, p2) - me*g_(20));

id Tr61(21, mu?, p1?, rho?, p2?, nu?, p4?, sigma?, p3?) =
              	       	    	       	     g_(21, mu) * (-i_*g_(21, p1) + me*g_(21)) *           g_(21, rho)   * (-i_*g_(21, p2) - me*g_(21)) *
                                             g_(21, nu) * (-i_*g_(21, p4) - me*g_(21)) *           g_(21, sigma) * (-i_*g_(21, p3) + me*g_(21));
id Tr62(22, mu?, p1?, rho?, p2?, nu?, p4?, sigma?, p3?) =
                                     	     g_(22, mu) * (-i_*g_(22, p1) + me*g_(22)) * g5_(22) * g_(22, rho)   * (-i_*g_(22, p2) - me*g_(22)) *
                                       	     g_(22, nu) * (-i_*g_(22, p4) - me*g_(22)) * g5_(22) * g_(22, sigma) * (-i_*g_(22, p3) + me*g_(22));
id Tr63(23, mu?, p1?, rho?, p2?, nu?, p4?, sigma?, p3?) =
                                   g5_(23) * g_(23, mu) * (-i_*g_(23, p1) + me*g_(23)) *           g_(23, rho)   * (-i_*g_(23, p2) - me*g_(23)) *
                                   g5_(23) * g_(23, nu) * (-i_*g_(23, p4) - me*g_(23)) *           g_(23, sigma) * (-i_*g_(23, p3) + me*g_(23));
id Tr64(24, mu?, p1?, rho?, p2?, nu?, p4?, sigma?, p3?) =
                                   g5_(24) * g_(24, mu) * (-i_*g_(24, p1) + me*g_(24)) * g5_(24) * g_(24, rho)   * (-i_*g_(24, p2) - me*g_(24)) *
                                   g5_(24) * g_(24, nu) * (-i_*g_(24, p4) - me*g_(24)) * g5_(24) * g_(24, sigma) * (-i_*g_(24, p3) + me*g_(24));

* sum of the QED contribution and spin 2 contribution: same diagram
id XresPhot1(mu?, nu?, alpha?, beta?, p1?, p2?, p3?, p4?, q?) =
   		  e^2*Phot(mu, nu, q) + ge^2/(4*Lambda^2)*Sumpol(mu, nu, alpha, beta, q)/(q.q + mX^2) * (p2(alpha) - p1(alpha)) * (p3(beta) - p4(beta));
id XresPhot2(mu?, nu?, alpha?, beta?, p1?, p2?, p3?, p4?, q?) =
                  e^2*Phot(mu, nu, q) + ge^2/(4*Lambda^2)*Sumpol(mu, nu, alpha, beta, q)/(q.q + mX^2) * (p3(alpha) + p1(alpha)) * (p2(beta) + p4(beta));

* to switch interactions off, impose conditions here
*id ge^4 = 0;
id e = 0;
*id ge = 0;

* define last tensors needed
id Phot(mu?, nu?, q?) = 1/(q.q) * ( d_(mu, nu) + (1 - 1/xi)*q(mu)*q(nu)/(q.q));
id Sumpol(mu?, nu?, alpha?, beta?, q?) = 1/2*Proj(mu, alpha, q)*Proj(nu, beta, q) + 1/2*Proj(mu, beta, q)*Proj(nu, alpha, q) - 1/3*Proj(mu, nu, q)*Proj(alpha, beta, q);
id Proj(mu?, nu?, q?) = d_(mu, nu) + q(mu)*q(nu)/(mX*mX);

* impose conservation of energy
id q = p1 + p2;
id k = p1 - p3;
id l = p1 - p4;
id p4 = p1 + p2 - p3;

* select your favorite gauge
*id 1/xi = 0;

* calculate all the needed traces
trace4, 1;
trace4, 2;
trace4, 3;
trace4, 4;
trace4, 5;
trace4, 6;
trace4, 7;
trace4, 8;
trace4, 9;
trace4, 10;
trace4, 11;
trace4, 12;
trace4, 13;
trace4, 14;
trace4, 15;
trace4, 16;
trace4, 17;
trace4, 18;
trace4, 19;
trace4, 20;
trace4, 21;
trace4, 22;
trace4, 23;
trace4, 24;

print;
.sort

* impose these constraints to simplify result
id q.q^-1 = -s^-1;
id k.k^-1 = -t^-1;
id l.l^-1 = -u^-1;
id p1.p1 = -me^2;
id p2.p2 = -me^2;
id p3.p3 = -me^2;
id p4.p4 = -me^2;
id p1.p2 = -s/2 + me^2;
id p3.p4 = -s/2 + me^2;
id p1.p3 = t/2 - me^2;
id p2.p4 = t/2 - me^2;
id p1.p4 = u/2 - me^2;
id p2.p3 = u/2 - me^2;
*id me = 0;

* to simplify you may use these constraints
*id t = - s - u + 4*me^2;
id u = - s - t + 4*me^2;
*id s = - t - u + 4*me^2;

Bracket e, me, mX, ge, Lambda;

print;
.sort

.end
