input glyph;
beginglyph
input ./glyphs/include/ാ;

clearxy;
z0=(0, m/4);
z1=((x2+x0)/2, y0 + m/4);
z2=(x1 + mw/4, y0);
z3=(x1, 0);
z4=(x0, y0);

p:=p+1;
paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
paths[p] := paths[p] shifted (xpart(point 2 of paths[p-1]) + thick/2 + rbearing + lbearing, 0);

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);

endglyph;
