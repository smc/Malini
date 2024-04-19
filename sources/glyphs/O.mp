input glyph;
beginglyph;
z0=(0, X/2);
z1=(x0 + 0.4Xw, y0 + 0.5X - overshoot);
z2=(x1 + 0.4Xw, y0);
z3=(x1, undershoot);
z4=(x0, y2);

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p] := harmonize(paths[p]);
pen_stroke(
   nib(middle_down_nib rotated -12)(0, 2, 4)
   nib(top_nib rotated 20)(1)
   nib(down_nib rotated -20)(3)
)(paths[0])(strokes[0]);
lbearing:=sw/3*0.4;
rbearing:=sw/3*0.4;
anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;
