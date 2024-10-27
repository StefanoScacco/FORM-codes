S m, x, y, mp, mX;

V k1, k2, q1, q2, l, p;

index alpha, beta, gamma, mu, nu, rho;

L M = (g5_(1) * g_(1, mu) * (i_*(k1(alpha)+q1(alpha))*g_(1, alpha) - m ) * g5_(1) * (i_*(k1(beta)-q2(beta))*g_(1, beta) - m ) * g_(1, rho) *
     (i_*k1(gamma)*g_(1, gamma) - m ) * (2*k1(nu) + q1(nu))

     + g5_(2) * g_(2, mu) * (i_*k2(gamma)*g_(2, gamma) - m ) * g_(2, rho) * (i_*(k2(beta)+q2(beta))*g_(2, beta) - m ) * g5_(2) *
     (i_*(k2(alpha)-q1(alpha))*g_(2, alpha) - m ) * (2*k2(nu) - q1(nu)))/(8*m);


trace4, 1;
trace4, 2;

print;
.sort

id k1 = l - x*q1 - y*q2;
id k2 = l + x*q1 + y*q2;

Bracket m, l, d_;

print;
.sort

.end
