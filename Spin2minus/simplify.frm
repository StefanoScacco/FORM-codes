S s, t, u, me, mX;

L res = -t^4 + 2*t^2*s^2 - s^4 + 2*me^2/mX^2*(t^4 + 4*t^3*s + 8*s^2*t^2 + 4*t*s^3 + s^4) + 10*me^2*(t^3 - t^2*s - s^2*t + s^3)
      + 4*me^4/mX^4*(2*s*t^3 + 5*s^2*t^2 + 2*s^3*t) + 4*me^4/mX^2*(-8*t^3 - 19*s*t^2 - 19*s^2*t - 8*s^3) + 4*me^4*(-2*t^2 + 23*s*t - 2*s^2)
      + 48*me^6/mX^2*(-s*t^2 - s^2*t) + 16*me^6/mX^2*(7*t^2 + 6*s*t + 7*s^2) + 112*me^6*(-s - t) + 64*me^8/mX^4*s*t + 64*me^8/mX^2*(-s - t) + 192*me^8;

id s = - t - u + 4*me^2;
id t = - s - u + 4*me^2;
id u = - s - t + 4*me^2;

Bracket me, mX;

print;
.sort

.end
