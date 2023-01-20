input glyph;
beginglyph;

z0=(0, m/4);
z1=((x2+x0)/2, y0 + m/4);
z2=(x1 + mw/4, y0);
z3=(x1, 0);
z4=(x0, y0);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

endglyph;
