input glyph;
beginglyph;
z0=(0, 0.5X);
z1=(x0 + 0.4Xw, y0 + 0.5X);
z2=(x1 + 0.4Xw, y1 - 0.5X);
z3=(x2 - 0.4Xw, y2 - 0.5X);
z4=(x3 - 0.4Xw, y3 + 0.5X);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

z6 =  (x1+0.1Xw, y0 - 0.2X);
z7 =  (x6+0.1Xw, y6 - 0.2X);
z8 =  (x7+0.1Xw, y7 - 0.2X);
paths[1] = z6--z8;
pen_stroke(
    nib(thick_nib)(0)
    nib(thick_nib)(1)
)(paths[1])(strokes[1]);
endglyph;
