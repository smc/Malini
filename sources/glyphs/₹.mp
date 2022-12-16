input glyph;
beginglyph;
z0 = (mw/4, X );
z1 = (x0 + mw/3, y0 - X/4);
z2 = (x1 - mw/2, 0.45X);
z3 = (x2 + mw/3, X/4);
z4 = (x3 + mw/3, 0);


paths[0] = z0{right}..z1..{left}z2;
pen_stroke(
    nib(top_nib)(0,2)
    nib(middle_down_nib)(1)
    nib(end_nib rotated terminalangle 3 of paths[0])(3)
)(paths[0])(strokes[0]);

z5 = (0, y0);
z6 = (x4,y0);
paths[1] = z5--z6;
pen_stroke(
    nib(top_nib rotated -15)(0,1)
)(paths[1])(strokes[1]);
z7 = (0, y1);
z8 = (x4,y1);
paths[2] = z7--z8;
pen_stroke(
   nib(top_nib rotated -15)(0,1)
)(paths[2])(strokes[2]);

z9=point infinity of paths[0] + (0, 0);
z10=(xpart(point 1 of paths[1]), 0);
paths[3] = z9--z10;
pen_stroke(
   nib(thin_nib rotated terminalangle 0 of paths[3])(0,1)
)(paths[3])(strokes[3]);

endglyph;