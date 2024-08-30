S w, wpr, y, me, mX, x, y, g1, g2, g3, g4, g5, j1, j2, j3, j4, j5;
* x = \cos\theta of scattering angle

L G = 1/wpr^3 * (-w*wpr*x*(1-x^2)*g1 + w^2*wpr^2*(1-x^2)*g2 + 2*w^2*(1-x^2)*g3 + 2*wpr^2*(1-x^2)*g4 + (1+x^2)*g5);

L J = 1/wpr^5 * (-w*wpr*x*(1-x^2)*j1 + w^2*wpr^2*(1-x^2)*j2 + 2*w^2*(1-x^2)*j3 + 2*wpr^2*(1-x^2)*j4 + (1+x^2)*j5);

*substitute
id g1 = y - 8*me/3 - 4/3*(me/mX)^2*y + 2/3*me*y^2/(w*wpr)*(me*y/mX^2-2);
id g2 = 1/3*y/(w*wpr)*(me*y/mX^2-2);
id g3 = 1/2*y*wpr/w;
id g4 = 1/2*y*w/wpr;
id g5 = me*(w+wpr)^2 - 8/3*me^2*y - 4/3*(me^3/mX^2)*y^2 + 1/3*me^2*y^3/(w*wpr)*(me*y/mX^2-2);

id j1 = -16/3*me*w*wpr + w*wpr*y - 8/9*me*y^2 + 4/9*(me/mX)^2*y*(y^2 - 6*w*wpr) + 32/9*me^2*y + 4/9*(me^3/mX^4)*y^4 + 32/9*me^3/(mX^2)*y^2 + 8/9*(me/mX)^4*y^3;
id j2 = 16/9*me - 4/9*y + 2/9*me/(mX^2)*y^2 + 2/9*me^2/(mX^4)*y^3 + 16/9*me^2/(mX^2)*y + 4/9*me^3/(mX^4)*y^2;
id j3 = 1/2*wpr^2*y;
id j4 = 1/2*w^2*y;
id j5 = me*w*wpr*(w+wpr)^2 - 4/9*me^2*y^3 - 16/9*me^2*w*wpr*y + 8/9*me^3/(mX^2)*y^4 - 2/3*me^3/(mX^2)*y^2*(w+wpr)^2 + 16/9*me^3*y^2 + 2/9*(me/mX)^3*y^5 + 16/9*me^4/(mX^2)*y^3 + 4/9*me^5/(mX^4)*y^4;

*substitute again
id y = w - wpr;
id wpr = me * w/(me + w*(1-x));  *Compton formula times (me + w*(1-x))
id wpr^-1 = (me + w*(1-x))/(me*w);
*id x = 0;

Bracket me, mX, w;

print;
.sort

.end
