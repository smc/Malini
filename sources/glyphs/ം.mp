input glyph;
beginglyph;

r:=0.3;
z0=(0, y3+r*m);
z1=((x2+x0)/2, y0 +r*m);
z2=(x1 + r*mw, y0);
z3=(x1, undershoot);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p]:=harmonize(paths[p]);
pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

endglyph;
