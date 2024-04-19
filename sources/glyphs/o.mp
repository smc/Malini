input glyph;
beginglyph;
save r;
r=0.85;
z0 = (0, s/2);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (x0 + r*sw, y0);
z3 = (x1, undershoot);
z4 = (x0, y0);
paths[p]:= z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p] := harmonize(paths[p]);

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.2;

anchor( "top", (xpart(point 1 of paths[p]), 1.2s));
endglyph;
