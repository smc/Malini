input glyph;
beginglyph;
z0= (mw, m);
z1=(x0 , y0 - 0.5m);
z2= (x1, y1 - 0.6m);
z3=( x2 - mw/4, y2 - m/3);
z4=( x3 - mw/2, y3 + m/6);
z5=( x4 + mw/3, y4 + m/6);
z6=( x5 + mw/3 - thick/4, y5 - .1m);

paths[0] = z0---z1--z2..z3..z4  ;
paths[0] := paths[0] shifted(-mw, 0);
pen_stroke(
    nib(middle_down_nib)(0,1,2,4,5,6)
)(paths[0])(strokes[0]);

endglyph;
