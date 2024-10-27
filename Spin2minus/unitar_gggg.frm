S s, t, u, x, m;

L Mpppp = 1/6*s^4/(-s+m^2) * (s^2/m^4 - s/m^2 + 1 - 6*u*t/s^2);

L Mppmm = 1/6*( s^4/(-s+m^2) * (s^2/m^4 - s/m^2 + 1 - 6*u*t/s^2) + u^4/(-u+m^2) * (u^2/m^4 - u/m^2 + 1 - 6*s*t/u^2) + t^4/(-t+m^2) * (t^2/m^4 - t/m^2 + 1 - 6*s*u/t^2) );

L Mpmpm = 1/6*u^4/(-u+m^2) * (u^2/m^4 - u/m^2 + 1 - 6*s*t/u^2);

L Mpmmp = 1/6*t^4/(-t+m^2) * (t^2/m^4 - t/m^2 + 1 - 6*s*u/t^2);

id t = -s/2*(1-x);
id u = -s/2*(1+x);
id (-t+m^2)^-1 = (s/2*(1-x)+m^2)^-1;
id (-u+m^2)^-1 = (s/2*(1+x)+m^2)^-1;

Bracket s, x;

print;
.sort

.end
