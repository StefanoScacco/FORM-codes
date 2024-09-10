S s, t, u, mX, f1, f2, f3, f4, f5, ge, gg;

L gegg = - f3 + 2*t*u*f2 - (-3*mX^4*f5);

L gggg = 2*t*u*f1 - 4*s*t*u*f2 + s*f3 - (3*mX^4*f4);

id f1 = mX^4*(7*t^2+12*t*u+7*u^2) - 2*mX^2*(t^3+7*u*t^2+7*u^2*t+u^3) + (t+u)^2*(t^2+u^2);
id f2 = -9*mX^6+4*mX^4*(s+3*u)-2*mX^2*(s^2+7*u*s+6*u^2)+s*(s^2+2*u*s+2*u^2);
id f3 = 6*mX^10-6*mX^8*(t+u)+3*mX^6*(t^2+u^2)-12*mX^4*t*u*(u+t)+2*mX^2*t*u*(t^2+12*t*u+u^2)-2*t*u*(u^3+u*t^2+u^2*t+t^3);
id f4 = (2*mX^4-2*mX^2*(t+u)+t^2+u^2) * (mX^4-mX^2*(t+u)+4*t*u);
id f5 = mX^6+mX^2*s*(s+2*u)-2*s*u*(u+s);

id t = - s - u + mX^2;
id s = - t - u + mX^2;

Bracket mX;

print;
.sort

.end
