input glyph;
beginglyph;
soften := 0;
z0=(0, s/2);
z1=(x0 + 0.3Xw, y0 + 0.5s - thick/4);
z2=(x1 + 0.3Xw, y0);
z3=(x1, undershoot);
z4=(x0, y2);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);
endglyph;
