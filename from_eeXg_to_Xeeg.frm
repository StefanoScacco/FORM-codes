S s, t, u, m, f1, f2, f3, e, Lambda, ge, gg, x, y;
* S defines scalar quantities

V pplus, pminus, k, pX;
* V defines vectors

* there is a factor of 4/5 because we are averaging over X polarizations, not e+e- polarizations.
L Decay = -e^2/(12*Lambda^2*m^4*s*t*u) * (3*gg^2*m^4*f2 - 6*gg*m^4*s*(ge-gg)*f3 - s*(ge-gg)^2*f1) * 4/5;

L try = 3*(1-(1-x)^4) + 4*(x-3)*(1-(1-x)^3)+6*(x^2+8*x-2)*(1-(1-x)^2)+12*(x^3-3*x^2-14*x-4)*x;

id f1 = 6*m^10+6*m^8*(t+u)+3*m^6*(t^2+u^2)+12*m^4*t*u*(u+t)+2*m^2*t*u*(t^2+12*t*u+u^2)+2*t*u*(u^3+u*t^2+u^2*t+t^3);
id f2 = (2*m^4+2*m^2*(t+u)+t^2+u^2) * (m^4+m^2*(t+u)+4*t*u);
id f3 = m^6+m^2*s*(s+2*u)+2*s*u*(u+s);

* with respect to the initial amplitude of scattering, k has to change sign
id s = m^2*(1-x-y);
id t = -m^2*(1-x);
id u = -m^2*(1-y);
id s^-1 = m^-2*(1-x-y)^-1;
id t^-1 = -m^-2*(1-x)^-1;
id u^-1 = -m^-2*(1-y)^-1;
id k = -pplus - pminus + pX;

id pX.pX = -m^2;
id k.k = 0;
id pplus.pplus = 0;
id pminus.pminus = 0;

Bracket m, ge, gg, Lambda, e;

print;
.sort

.end