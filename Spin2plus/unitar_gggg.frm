S s, t, u, x, m;

L Mpppp = (-t^4 + m^2*t^3 - m^4*t*(t+5*s))/(t+m^2) + (-u^4 + m^2*u^3 - m^4*u*(u+5*s))/(u+m^2) - 3*m^4*(u^2+t^2)/(s+m^2);

L Mppmm = - (u^2+s^2)/(t+m^2) - (t^2+s^2)/(u+m^2) - (u^2+t^2)/(s+m^2);

L Mpmpm = (-t^4 + m^2*t^3 - m^4*t*(t+5*u))/(t+m^2) + (-s^4 + m^2*s^3 - m^4*s*(s+5*u))/(s+m^2) - 3*m^4*(s^2+t^2)/(u+m^2);

L Mpmmp = (-u^4 + m^2*u^3 - m^4*u*(u+5*t))/(u+m^2) + (-s^4 + m^2*s^3 - m^4*s*(s+5*t))/(s+m^2) - 3*m^4*(s^2+u^2)/(t+m^2);

id t = -s/2*(1-x);
id u = -s/2*(1+x);
id (t+m^2)^-1 = (-s/2*(1-x)+m^2)^-1;
id (u+m^2)^-1 = (-s/2*(1+x)+m^2)^-1;

Bracket s, x;

print;
.sort

.end