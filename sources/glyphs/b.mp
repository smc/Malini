input glyph;
beginglyph;
z0=(x1, X);
z1=(0, X/2);
z2=(x1  ,0);
paths[0] := z0--z1..z2;
paths[1] := p_loop shifted(xpart(point 0 of paths[0]),0);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;
